import 'package:dtumaps/data/models/building/building.dart';
import 'package:dtumaps/data/models/buildings_data/buildings_data.dart';
import 'package:dtumaps/data/models/marker_data/marker_data.dart';

import 'package:dtumaps/screens/general/loading_state_view_model.dart';
import 'package:dtumaps/screens/markers/markers_view_model.dart';
import 'package:dtumaps/widgets/app_text.dart';
import 'package:dtumaps/widgets/loading/container_with_loading.dart';
import 'package:dtumaps/widgets/bottom_sheet.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'dart:ui' as ui;
import '../../widgets/drawer.dart';
import '../general/buildings_view_model.dart';
import 'components/bottom-sheet.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import "package:dtumaps/foundation/extension/async_snapshot.dart";

class MapsScreen extends StatefulHookWidget {
  static const String routeName = '/mapScreen';
  static const String route = 'overlay_image';
  static const _xLeftBottom = 108.15783;
  static const _yLeftBottom = 16.05036;
  static const _xRightTop = 108.16062;
  static const _yRightTop = 16.04844;
  static const _mapsURLs = [
    "assets/images/map/map_lv1.png",
    "assets/images/map/map_lv2.png",
    "assets/images/map/map_lv3.png",
    "assets/images/map/map_lv4.png",
  ];

  @override
  _MapsScreenState createState() => _MapsScreenState();
}

class _MapsScreenState extends State<MapsScreen> with TickerProviderStateMixin {
  late final MapController mapController;
  double _zoomValue = 18;
  List<LatLng>? _points;
  List<Marker>? _markers;

  Position? _currentPosition;

  var _overlayImages = [];

  @override
  void initState() {
    super.initState();
    mapController = MapController();
    _initOverlayImages();
  }

  _getCurrentLocation() async {
    Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) async {
      return position;
      // _getAddressFromLatLng();
    }).catchError((e) {
      print("ERROR(Geolocation): $e");
    });
    final lastPosition = await Geolocator.getLastKnownPosition();
    setState(() {
      _currentPosition = lastPosition;
    });
    if (lastPosition != null) {
      setState(() {
        _zoomValue = 20;
      });
      _animatedMapMove(
          LatLng(lastPosition.latitude, lastPosition.longitude), _zoomValue);
    }
    LatLng currentLatLng;

    // Until currentLocation is initially updated, Widget can locate to 0, 0
    // by default or store previous location value to show.
    if (_currentPosition != null) {
      currentLatLng =
          LatLng(_currentPosition!.latitude, _currentPosition!.longitude);
    } else {
      currentLatLng = LatLng(0, 0);
    }
    _markers!.add(
      Marker(
        width: 120.0,
        height: 120.0,
        point: currentLatLng,
        builder: (ctx) => Container(
          child: Image.asset("assets/images/map/user_point.gif"),
        ),
      ),
    );

    setState(() {
      _markers = _markers;
    });
  }

  void _initMarker(MarkerData markerData, BuildingsData buildings) {
    _markers = new List<Marker>.empty(growable: true);
// Add marker for buildings
    markerData.markers!.forEach(
      (marker) {
        final markerGeo = marker.location;

        _markers!.add(
          new Marker(
              rotate: true,
              width: 130.0,
              height: 130.0,
              point: new LatLng(markerGeo!.x!, markerGeo.y!),
              builder: (context) {
                return new GestureDetector(
                  onTap: () {
                    final Building building = buildings.buildings!
                        .firstWhere((element) => element.id == marker.id);
                    print("building: $building");

                    _showModelBottomSheet(context, building);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/images/map/building_location.png',
                        width: 30,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 3, bottom: 3, left: 6, right: 6),
                        decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(10.0),
                          color: Colors.white.withOpacity(0.5),
                          boxShadow: <BoxShadow>[
                            new BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              blurRadius: 5.0,
                              offset: new Offset(5.0, 5.0),
                            ),
                          ],
                        ),
                        child: new Text(
                          '${marker.name}',
                          style: new TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                );
              }),
        );
      },
    );
  }

  void _animatedMapMove(LatLng destLocation, double destZoom) {
    // Create some tweens. These serve to split up the transition from one location to another.
    // In our case, we want to split the transition be<tween> our current map center and the destination.
    final _latTween = Tween<double>(
        begin: mapController.center.latitude, end: destLocation.latitude);
    final _lngTween = Tween<double>(
        begin: mapController.center.longitude, end: destLocation.longitude);
    final _zoomTween = Tween<double>(begin: mapController.zoom, end: destZoom);

    // Create a animation controller that has a duration and a TickerProvider.
    var controller = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
    // The animation determines what path the animation will take. You can try different Curves values, although I found
    // fastOutSlowIn to be my favorite.
    Animation<double> animation =
        CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);

    controller.addListener(() {
      mapController.move(
          LatLng(_latTween.evaluate(animation), _lngTween.evaluate(animation)),
          _zoomTween.evaluate(animation));
    });

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.dispose();
      } else if (status == AnimationStatus.dismissed) {
        controller.dispose();
      }
    });

    controller.forward();
  }

  void _initOverlayImages() {
    for (var mapUrl in MapsScreen._mapsURLs) {
      _overlayImages.add(<OverlayImage>[
        OverlayImage(
          bounds: LatLngBounds(
            LatLng(MapsScreen._yLeftBottom, MapsScreen._xLeftBottom),
            LatLng(MapsScreen._yRightTop, MapsScreen._xRightTop),
          ),
          opacity: 1,
          imageProvider: AssetImage(mapUrl),
        ),
      ]);
    }
  }

  @override
  Widget build(BuildContext context) {
    print("current Position: $_currentPosition");

    final markersViewModel = context.read(markersViewModelProvider);
    final markers =
        useProvider(markersViewModelProvider.select((value) => value.markers));

    final snapshot2 = useFuture(
      useMemoized(() {
        return context.read(loadingStateProvider).whileLoading(
            () async => await markersViewModel.fetchMarkers(id: "1"));
      }, [markers?.toString()]),
    );

    final buildingsViewModel = context.read(buildingsViewModelProvider);
    final buildings = useProvider(
        buildingsViewModelProvider.select((value) => value.buildings));

    final snapshot3 = useFuture(
      useMemoized(() {
        return context.read(loadingStateProvider).whileLoading(
            () async => await buildingsViewModel.fetchBuildings());
      }, [buildings?.toString()]),
    );

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        drawer: MyDrawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _getCurrentLocation();
          },
          child: const Icon(
            Icons.my_location,
            color: Colors.blue,
          ),
          backgroundColor: Colors.white,
        ),
        body: ContainerWithLoading(
          child: snapshot2.isWaiting ||
                  snapshot3.isWaiting ||
                  buildings == null ||
                  markers == null
              ? SizedBox()
              : markers.when(
                  success: (markerData) {
                    buildings.ifSuccess((buildingData) =>
                        _initMarker(markerData, buildingData));
                    return Stack(
                      children: <Widget>[
                        Column(
                          children: [
                            Flexible(
                              child: FlutterMap(
                                mapController: mapController,
                                options: MapOptions(
                                    center: LatLng(16.04919, 108.15928),
                                    zoom: _zoomValue,
                                    minZoom: 14,
                                    rotationThreshold: 60),
                                layers: [
                                  TileLayerOptions(
                                    urlTemplate:
                                        'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                                    subdomains: ['a', 'b', 'c'],
                                  ),
                                  OverlayImageLayerOptions(
                                      overlayImages:
                                          _overlayImages[3]), // great internet
                                  MarkerLayerOptions(markers: _markers!)
                                ],
                              ),
                            ),
                          ],
                        ),
                        SearchBottomSheet(),
                      ],
                    );
                  },
                  failure: (error) {
                    return Center(
                      child: Text(
                        "ERROR: ${error.message}",
                        style: TextStyle(color: Colors.black),
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }

  void _showModelBottomSheet(BuildContext context, Building building) {
    showModalBottomSheet<dynamic>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.85,
        builder: (_, controller) => MyBottomSheet(
          building: building,
        ),
      ),
    );
  }
}

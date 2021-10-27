import 'package:dtumaps/screens/general/loading_state_view_model.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:dtumaps/widgets/loading/container_with_loading.dart';
import 'package:dtumaps/widgets/bottom_sheet.dart';
import 'package:dtumaps/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:dtumaps/data/models/building/building.dart';
import 'package:dtumaps/data/models/buildings_data/buildings_data.dart';
import 'package:dtumaps/data/models/direction_data/direction_data.dart';
import 'package:dtumaps/data/models/marker_data/marker_data.dart';
import 'package:dtumaps/screens/markers/markers_view_model.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_map/flutter_map.dart';

import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import "package:dtumaps/foundation/extension/async_snapshot.dart";
import 'package:latlong2/latlong.dart';

import '../general/buildings_view_model.dart';

import 'direction_view_model.dart';

class MapsScreen extends StatefulHookWidget {
  static const String routeName = '/mapScreen';
  static const String route = 'overlay_image';
  static const _xLeftBottom = 108.15783;
  static const _yLeftBottom = 16.05036;
  static const _xRightTop = 108.16062;
  static const _yRightTop = 16.04844;
  static const _mapsURLs =
      'https://res.cloudinary.com/huynhphvan/image/upload/v1632120215/maps_20210918-min_q82wcd.png';

  @override
  _MapsScreenState createState() => _MapsScreenState();
}

class _MapsScreenState extends State<MapsScreen> with TickerProviderStateMixin {
  late final MapController mapController;
  double _zoomValue = 18;
  List<LatLng>? _points;
  List<Marker>? _markers;

  Position? _currentPosition;

  @override
  void initState() {
    super.initState();
    mapController = MapController();
  }

  _getCurrentLocation() async {
    mapController = new MapController();
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
    }
  }

// Init points and _markers
  void _initPointsAndMarkers(BuildContext context, DirectionData? directionData,
      MarkerData markerData, BuildingsData buildings) {
    _points = new List<LatLng>.empty(growable: true);
    mapController = new MapController();
    directionData!.directions!.paths!.forEach((point) {
      _points!.add(new LatLng(point.latitude!, point.longitude!));
    });

    _markers = new List<Marker>.empty(growable: true);

// Add markers for start and destination
    for (int i = 0; i < _points!.length; i++) {
      _markers!.add(
        new Marker(
          width: 80.0,
          height: 80.0,
          point: _points!.elementAt(i),
          builder: (ctx) => i == 0 || i == _points!.length - 1
              ? new Icon(
                  Icons.pin_drop,
                  color: Colors.red,
                )
              : SizedBox(),
        ),
      );
    }

    setState(() {
      _points = _points;
      _markers = _markers;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("current Position: $_currentPosition");
    var overlayImages = <OverlayImage>[
      OverlayImage(
        bounds: LatLngBounds(
          LatLng(MapsScreen._yLeftBottom, MapsScreen._xLeftBottom),
          LatLng(MapsScreen._yRightTop, MapsScreen._xRightTop),
        ),
        opacity: 1,
        imageProvider: NetworkImage(MapsScreen._mapsURLs),
      ),
    ];

    final roadViewModel = context.read(roadViewModelProvider);
    final road =
        useProvider(roadViewModelProvider.select((value) => value.direction));

    final Map<String, dynamic> startAndEndLocation = {
      "start": {
        "coordinates": {"x": 16.050058579297115, "y": 108.15789621323347}
      },
      "current": {
        "coordinates": {"x": 16.050058579297115, "y": 108.15789621323347}
      },
      "destination": {
        "coordinates": {"x": 16.049413519370294, "y": 108.16036552190779}
      }
    };
    final snapshot = useFuture(
      useMemoized(() {
        return context.read(loadingStateProvider).whileLoading(
              () async => await roadViewModel.fetchDirection(
                  userId: "5757fe81-458b-4016-b5df-1b5325300ae4",
                  startAndEndLocation: startAndEndLocation),
            );
      }, []),
    );

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
    ScreenSize().init(context);

    return Scaffold(
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
        child: snapshot.isWaiting ||
                snapshot2.isWaiting ||
                snapshot3.isWaiting ||
                road == null ||
                markers == null ||
                buildings == null
            ? SizedBox()
            : road.when(
                success: (directionData) {
                  markers.ifSuccess(
                    (markerData) => buildings.ifSuccess(
                      (buildingData) => _initPointsAndMarkers(
                          context, directionData, markerData, buildingData),
                    ),
                  );
                  print("buildings data: $buildings");
                  return Column(
                    children: [
                      Flexible(
                        child: FlutterMap(
                          mapController: mapController,
                          options: MapOptions(
                            center: LatLng(16.04919, 108.15928),
                            zoom: 18.0,
                            minZoom: 13,
                            controller: mapController,
                            debugMultiFingerGestureWinner: true,
                            enableMultiFingerGestureRace: true,
                          ),
                          layers: [
                            TileLayerOptions(
                              urlTemplate:
                                  'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                              subdomains: ['a', 'b', 'c'],
                            ),
                            OverlayImageLayerOptions(
                                overlayImages: overlayImages),
                            new PolylineLayerOptions(
                              polylines: [
                                new Polyline(
                                    points: _points!,
                                    strokeWidth: 4.0,
                                    color: Colors.purple)
                              ],
                            ),
                            new MarkerLayerOptions(
                              markers: _markers!,
                            ),
                          ],
                        ),
                      ),
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

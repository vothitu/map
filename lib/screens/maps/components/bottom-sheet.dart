import 'dart:async';

import 'package:dtumaps/data/models/result/result.dart';
import 'package:dtumaps/data/models/search/search.dart';
import 'package:dtumaps/utilize/screen_size.dart';

import 'package:dtumaps/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import './search-bar.dart';
import 'package:dtumaps/screens/search_view_model.dart';

enum AreaType { Facility, Building, Place }

class SearchBottomSheet extends StatefulHookWidget {
  const SearchBottomSheet({Key? key}) : super(key: key);

  @override
  _SearchBottomSheetState createState() => _SearchBottomSheetState();
}

class _SearchBottomSheetState extends State<SearchBottomSheet> {
  final double _initFabHeight = 120.0;
  double _fabHeight = 0;
  double _panelHeightOpen = 0;
  double _panelHeightClosed = 95.0;
  late final PanelController slidingUpPanelController;

  Result<Search>? _search;
  Timer? debouncer;

  @override
  void initState() {
    super.initState();
    slidingUpPanelController = PanelController();
  }

  void debounce(
    VoidCallback callback, {
    Duration duration = const Duration(milliseconds: 1000),
  }) {
    if (debouncer != null) {
      debouncer!.cancel();
    }

    debouncer = Timer(duration, callback);
  }

  @override
  Widget build(BuildContext context) {
    final searchViewModel = context.read(searchViewModelProvider);

    return Consumer(
      builder: (ctx, watch, _) {
        return Container(
          child: SlidingUpPanel(
            controller: slidingUpPanelController,
            parallaxEnabled: true,
            parallaxOffset: .5,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            panelBuilder: (sc) => _panel(sc, context, (value) async {
              await Future.delayed(Duration(microseconds: 100), () async {
                await searchViewModel.fetchSearch(value: value);

                final search = ctx.read(searchViewModelProvider).search;

                setState(() {
                  _search = search;
                });
                print("Search: $_search}");
              });
            }),
            onPanelSlide: (double pos) => setState(
              () {
                _fabHeight = pos * (_panelHeightOpen - _panelHeightClosed) +
                    _initFabHeight;
              },
            ),
          ),
        );
      },
    );
  }

  Widget _panel(ScrollController sc, BuildContext context,
      ValueChanged<String> callback) {
    Size size = ScreenSize.getScreenSize(context);

    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView(
        controller: sc,
        children: <Widget>[
          SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 30,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.all(Radius.circular(12.0))),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 12),
            child: Builder(
              builder: (ctx) {
                return Row(
                  children: [
                    IconButton(
                        onPressed: () => Scaffold.of(ctx).openDrawer(),
                        icon: SvgPicture.asset("assets/icons/drawer_icon.svg")),
                    SearchField(
                      onChanged: (value) {
                        debounce(() {
                          callback(value);
                        });
                      },
                    ),
                  ],
                );
              },
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              height: size.height * 0.8,
              child: _search == null
                  ? SizedBox()
                  : _search!.when(
                      success: (searchData) {
                        return _buildListView(searchData);
                      },
                      failure: (error) {
                        return new Center(
                          child: AppText(
                            "Không tìm thấy kết quả",
                            color: Colors.black,
                          ),
                        );
                      },
                    ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildListView(
    Search search,
  ) {
    return search.building!.isEmpty &&
            search.facility!.isEmpty &&
            search.place!.isEmpty
        ? new Center(
            child: AppText(
              "No Results",
              color: Colors.black,
            ),
          )
        : Column(
            children: [
              if (search.building!.isNotEmpty)
                Flexible(
                    child:
                        _listViewBuilder(search.building, AreaType.Building)),
              if (search.facility!.isNotEmpty)
                Flexible(
                    child:
                        _listViewBuilder(search.facility, AreaType.Facility)),
              if (search.place!.isNotEmpty)
                Flexible(child: _listViewBuilder(search.place, AreaType.Place)),
            ],
          );
  }

  Widget _listViewBuilder(dynamic area, AreaType areaType) {
    String headerName = "";

    switch (areaType) {
      case AreaType.Building:
        headerName = "Toà nhà";
        break;
      case AreaType.Facility:
        headerName = "Cơ sở";
        break;
      case AreaType.Place:
        headerName = "Khác";
        break;
    }
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: area.length + 1,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return Container(
            padding: EdgeInsets.only(bottom: 10, top: 10),
            decoration: BoxDecoration(
                border: Border(
              bottom: BorderSide(
                color: Colors.black.withOpacity(0.1),
                width: 1,
              ),
            )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                AppText(
                  headerName,
                  color: Colors.grey,
                ),
              ],
            ),
          );
        }

        return _buildRow(area[index - 1], areaType);
      },
    );
  }

  Widget _buildRow(dynamic detail, AreaType areaType) {
    Icon? icon = Icon(Icons.location_on);
    Image tileCircleImage =
        Image.asset('assets/images/map/university.png', width: 64, height: 64);
    switch (areaType) {
      case AreaType.Building:
        tileCircleImage = Image.asset('assets/images/map/building.png',
            width: 50, height: 50);
        icon = Icon(Icons.location_city);
        break;
      case AreaType.Facility:
        tileCircleImage = Image.asset('assets/images/map/university.png',
            width: 50, height: 50);
        icon = Icon(Icons.apps);
        break;
      case AreaType.Place:
        icon = Icon(Icons.place);
        break;
    }
    return Container(
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: Colors.black.withOpacity(0.1),
          width: 1,
        ),
      )),
      child: InkWell(
          // TODO: Make a Function here.
          onTap: () {},
          splashColor: Colors.grey,
          child: new ListTile(
            leading: Container(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 40,
                  minHeight: 40,
                  maxWidth: 40,
                  maxHeight: 40,
                ),
                child: tileCircleImage,
              ),
            ),
            selectedTileColor: Colors.grey,
            focusColor: Colors.grey,
            hoverColor: Colors.grey,
            mouseCursor: SystemMouseCursors.click,
            title: AppText(
              "${detail.name}",
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            subtitle: Text('Khu này thú dị lắm ...'),
          )),
    );
  }
}

import 'package:dtumaps/data/models/facility/facility.dart';
import 'package:dtumaps/foundation/extension/async_snapshot.dart';
import 'package:dtumaps/screens/detail_facility/facility_view_model.dart';
import 'package:dtumaps/screens/general/loading_state_view_model.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:dtumaps/widgets/loading/container_with_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'components/app_bar.dart';
import 'components/locations.dart';
import 'components/option.dart';

class FacilityScreen extends HookWidget {
  static const String routeName = '/facility';

  @override
  Widget build(BuildContext context) {
    final facilityViewModel = context.read(facilityViewModelProvider);

    final facilities = useProvider(
        facilityViewModelProvider.select((value) => value.facilities));

    final snapshot = useFuture(
      useMemoized(() {
        return context
            .read(loadingStateProvider)
            .whileLoading(() async => await facilityViewModel.fetchFacility());
      }, [facilities?.toString()]),
    );

    final facility = useProvider(
        facilityViewModelProvider.select((value) => value.facility));

    final snapshot1 = useFuture(
      useMemoized(() {
        return context.read(loadingStateProvider).whileLoading(
            () async => await facilityViewModel.fetchSpecificFacility(id: "1"));
      }, [facility?.toString()]),
    );
    ScreenSize().init(context);
    return Scaffold(
      body: ContainerWithLoading(
        child: snapshot1.isWaiting || facility == null
            ? SizedBox()
            : facility.when(
                success: (data) {
                  final facility = data.facility;
                  return Scaffold(
                    body: Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          Container(
                            child: AppBarCustom(
                              screen: 'Hoà Khánh',
                            ),
                          ),
                          Expanded(
                            child: LocationsWidget(),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            height: 120,
                            child: Container(
                              child: ListView.builder(
                                itemCount: facility!.length,
                                itemBuilder: (_, index) {
                                  return _facilityListTile(facility[index]);
                                },
                              ),
                            ),
                          ),
                          Option(),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  );
                },
                failure: (e) => Center(
                  child: Text(
                    "ERROR :",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
      ),
    );
  }
}

Widget _facilityListTile(Facility facility) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "${facility.name}",
        style: TextStyle(
            fontWeight: FontWeight.w600, color: Colors.black, fontSize: 17),
      ),
      SizedBox(
        height: 10.0,
      ),
      Text(
        "${facility.description}",
        softWrap: true,
        style: TextStyle(color: Colors.black, fontSize: 15),
      ),
    ],
  );
}
    // return Scaffold(
    //   body: Container(
    //     padding: EdgeInsets.only(left: 5),
    //     child: Column(
    //       children: [
    //         Container(
    //           child: AppBarCustom(
    //             screen: 'Hoà Khánh',
    //           ),
    //         ),
    //         Expanded(
    //           child: LocationsWidget(),
    //         ),
    //         Container(
    //           padding: const EdgeInsets.only(left: 20.0, right: 20.0),
    //           height: 120,
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: <Widget>[
    //               Text(
    //                 "rbfnrfn",
    //                 style: TextStyle(
    //                     fontWeight: FontWeight.w600,
    //                     color: Colors.black,
    //                     fontSize: 17),
    //               ),
    //               SizedBox(
    //                 height: 10.0,
    //               ),
    //               Text(
    //                 "Phục vụ công tác dạy học chương trình Đào Tạo Quốc Tế. Nơi được trang bị nhiều thiết bị, phòng học, phòng thí nghiệm hiện đại. Với 6 toà nhà, hơn 80 phòng học, 1 căn tin.",
    //                 softWrap: true,
    //                 style: TextStyle(color: Colors.black, fontSize: 15),
    //               ),
    //             ],
    //           ),
    //         ),
    //         Option(),
    //         SizedBox(height: 20),
    //       ],
    //     ),
    //   ),
    // );
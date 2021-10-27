import 'package:dtumaps/consts/my_colors.dart';
import 'package:dtumaps/screens/home/components/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class StepsBottomSheet extends StatefulWidget {
  const StepsBottomSheet({Key? key}) : super(key: key);

  @override
  _StepsBottomSheetState createState() => _StepsBottomSheetState();
}

class _StepsBottomSheetState extends State<StepsBottomSheet> {
  final double _initFabHeight = 100.0;
  double _fabHeight = 0;
  double _panelHeightOpen = 0;
  double _panelHeightClosed = 95.0;
  late final PanelController slidingUpPanelController;

  @override
  void initState() {
    super.initState();
    slidingUpPanelController = PanelController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SlidingUpPanel(
        controller: slidingUpPanelController,
        parallaxEnabled: true,
        parallaxOffset: .5,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        panelBuilder: (sc) => _panel(sc),
        onPanelSlide: (double pos) => setState(() {
          _fabHeight =
              pos * (_panelHeightOpen - _panelHeightClosed) + _initFabHeight;
        }),
      ),
    );
  }

  Widget _panel(ScrollController sc) {
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
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButtonContainer(text: 'Bắt đầu'),
                      OutlinedButtonContainer(
                          colorBorder: MyColors.colorBorder,
                          colorText: MyColors.colorPrimary,
                          text: 'Bản đồ'),
                      OutlinedButtonContainer(
                          colorBorder: MyColors.colorBorder,
                          colorText: MyColors.colorPrimary,
                          text: 'Ghim')
                    ],
                  )
                ],
              ),
            ),

          ],
        ));
  }

}

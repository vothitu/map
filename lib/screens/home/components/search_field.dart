import 'package:dtumaps/consts/my_colors.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SearchField extends StatefulWidget {
  _MySearchState createState() => _MySearchState();
}

class _MySearchState extends State<SearchField> {
  bool isVisible = false;
  final fieldText = TextEditingController();

  Timer? _debounce;

  void _onSearchChanged(String searchText) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 1000), () {
      // do something with searchText
      print('searchText: $searchText');
      setState(() {
        isVisible = searchText != "";
      });
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  void clearText() {
    fieldText.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.screenWidth * 1,
      height: getProportionateScreenHeight(60),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Center(
        child: TextField(
          onChanged: _onSearchChanged,
          style: TextStyle(color: MyColors.colorPrimary, fontSize: 18),
          decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              contentPadding: EdgeInsets.only(bottom: 11, top: 11),
              hintText: "Search",
              prefixIcon: Icon(
                EvaIcons.search,
              ),
              suffixIcon: Visibility(
                visible: isVisible,
                child: IconButton(
                    onPressed: clearText,
                    padding: EdgeInsets.all(0),
                    icon: Icon(
                      EvaIcons.search,
                      size: 22,
                      color: Colors.black.withOpacity(.3),
                    )),
              )),
          controller: fieldText,
        ),
      ),
    );
  }
}

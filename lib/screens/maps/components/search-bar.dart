import 'package:dtumaps/consts/my_colors.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  final Function(String value)? onChanged;

  const SearchField({Key? key, this.onChanged}) : super(key: key);
  _MySearchState createState() => _MySearchState();
}

class _MySearchState extends State<SearchField> {
  bool isVisible = false;
  final fieldText = TextEditingController();

  void change(String value) {
    setState(() {
      if (value == "")
        isVisible = false;
      else
        isVisible = true;
    });
  }

  void clearText() {
    fieldText.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.screenWidth * 0.8,
      height: getProportionateScreenHeight(35),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Center(
        child: TextField(
          onChanged: (value) {
            change(value);
            if (widget.onChanged != null) {
              widget.onChanged!(value);
            }
          },
          style: TextStyle(color: MyColors.colorPrimary, fontSize: 18),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(bottom: 11, top: 11),
              hintText: "Search",
              prefixIcon: Icon(
                EvaIcons.search,
              ),
              suffixIcon: Visibility(
                visible: isVisible,
                child: IconButton(
                    onPressed: () {
                      clearText();
                      change("");
                    },
                    padding: EdgeInsets.all(0),
                    icon: Icon(
                      EvaIcons.close,
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

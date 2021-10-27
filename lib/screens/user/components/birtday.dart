import 'package:dtumaps/consts/my_colors.dart';
import 'package:dtumaps/consts/my_icons.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BirthdayWidget extends StatefulWidget {
  final int maxLines;
  final String label;
  final String day;

  const BirthdayWidget({
    Key? key,
    this.maxLines = 1,
    required this.label,
    required this.day,
  }) : super(key: key);

  @override
  _BirthdayWidgetState createState() => _BirthdayWidgetState();
}

class _BirthdayWidgetState extends State<BirthdayWidget> {
  late DateTime date = DateTime.parse(widget.day);
  late TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(
        text: DateFormat('dd/MM/yyyy').format(DateTime.parse(widget.day)));
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: MyColors.colorSecond,
              fontFamily: 'Mulish',
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 45,
            width: getProportionateScreenWidth(350),
            child: TextField(
              readOnly: true,
              controller: controller,
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  suffixIcon: IconButton(
                      onPressed: () => pickDate(context),
                      padding: EdgeInsets.all(0),
                      icon: Icon(
                        MyIcons.calendar,
                        size: 22,
                        color: MyColors.appBarColor,
                      ))),
              maxLines: widget.maxLines,
              style: TextStyle(
                  color: MyColors.colorSecond, fontSize: 16.0, height: 0.9),
            ),
          ),
        ],
      );

  Future pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: /*date ?? */ initialDate,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (newDate == null) return;

    setState(() {
      date = newDate;
      controller.text = DateFormat('dd/MM/yyyy').format(date);
    });
  }
}

import 'package:flutter/material.dart';

import 'app_text.dart';

class BodyText extends StatelessWidget {
  final String bodyText;

  const BodyText({
    Key? key,
    required this.bodyText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(-.6, 0),
      child: AppText(
        bodyText,
        color: Colors.grey[600],
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

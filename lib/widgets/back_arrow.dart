import 'package:flutter/material.dart';

class BackArrow extends StatelessWidget {
  final Color color;
  final VoidCallback pressed;

  const BackArrow({
    Key? key,
    required this.color,
    required this.pressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 32,
      left: 12,
      child: IconButton(
        onPressed: pressed,
        icon: const Icon(Icons.arrow_back_ios),
        color: color,
      ),
    );
  }
}

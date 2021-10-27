import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Loading extends HookWidget {
  const Loading();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
      ),
    );
  }
}

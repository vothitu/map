import 'package:flutter/material.dart';
import 'components/body.dart';

class StepScreen extends StatefulWidget {
  static const String routeName = '/stepScreen';

  @override
  _StepScreenState createState() => _StepScreenState();
}

class _StepScreenState extends State<StepScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Body(),
    );
  }
}

import 'package:dtumaps/constraint.dart';
import 'package:dtumaps/screens/onboarding/components/main_content.dart';
import 'package:dtumaps/screens/onboarding/components/skip_button.dart';
import 'package:dtumaps/screens/onboarding/components/steps_container.dart';
import 'package:dtumaps/screens/onboarding/models/onboarding_model.dart';
import 'package:dtumaps/screens/routes/routes.dart';
import 'package:dtumaps/utilize/screen_size.dart';

import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  static const String routeName = '/onboardingscreen';
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<OnboardingModel> _list = OnboardingModel.list;
  int page = 0;
  var _controller = PageController();
  var show = false;

  @override
  Widget build(BuildContext context) {
    _controller.addListener(() {
      setState(() {
        page = _controller.page!.round();
      });
    });

    Size size = ScreenSize.getScreenSize(context);
    return Scaffold(
      backgroundColor: kScaffoldBgColor,
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: <Widget>[
                SkipButton(),
                Expanded(
                  child: PageView.builder(
                    controller: _controller,
                    itemCount: _list.length,
                    itemBuilder: (context, index) => MainContent(
                      list: _list,
                      index: index,
                    ),
                  ),
                ),
                StepsContainer(
                  page: page,
                  list: _list,
                  controller: _controller,
                  showLoginScreen: (value) {
                    setState(() {
                      show = value;
                      if (value) {
                        Future.delayed(Duration(milliseconds: 500), () {
                          Navigator.pushNamed(context, Routes.login);
                        });
                      }
                    });
                  },
                ),
                SizedBox(height: size.height * 0.07),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

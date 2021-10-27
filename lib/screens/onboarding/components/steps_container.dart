import 'package:dtumaps/constraint.dart';
import 'package:dtumaps/screens/onboarding/models/onboarding_model.dart';
import 'package:flutter/material.dart';

class StepsContainer extends StatelessWidget {
  const StepsContainer(
      {Key? key,
      required this.page,
      required List<OnboardingModel> list,
      required PageController controller,
      required this.showLoginScreen})
      : _list = list,
        _controller = controller,
        super(key: key);

  final int page;
  final List<OnboardingModel> _list;
  final PageController _controller;
  final Function showLoginScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 66,
      height: 66,
      child: Stack(
        children: [
          Container(
            width: 66,
            height: 66,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(kButtonColor),
              value: (page + 1) / (_list.length + 1),
            ),
          ),
          Center(
            child: InkWell(
              onTap: () {
                //TODO: go to next Item
                if (page < _list.length && page != _list.length - 1) {
                  _controller.animateToPage(page + 1,
                      duration: Duration(microseconds: 500),
                      curve: Curves.easeInOutCubic);
                  showLoginScreen(false);
                } else {
                  //TODO: show login screen
                  showLoginScreen(true);
                }
              },
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: kButtonColor,
                  borderRadius: BorderRadius.all(Radius.circular(100.0)),
                ),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

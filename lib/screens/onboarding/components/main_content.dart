import 'package:dtumaps/constraint.dart';
import 'package:dtumaps/screens/onboarding/models/onboarding_model.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:dtumaps/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
    required List<OnboardingModel> list,
    this.index,
  })  : _list = list,
        super(key: key);

  final List<OnboardingModel> _list;
  final index;

  @override
  Widget build(BuildContext context) {
    Size size = ScreenSize.getScreenSize(context);
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        children: [
          /*  FadeAnimation( 0.5*/
          SvgPicture.asset(
            _list[index].image,
            height: size.height * 0.45,
          ),
          SizedBox(height: size.height * 0.03),
          /*  FadeAnimation(
            0.9, */

          AppText(
            _list[index].title,
            color: kTextColorDark,
            fontSize: 26,
            fontWeight: FontWeight.w500,
          ),
          /*  ), */
          SizedBox(height: size.height * 0.01),
          /*  FadeAnimation(
            1.1, */
          AppText(
            _list[index].text,
            textAlign: TextAlign.center,
            color: Colors.grey[600],
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          /*     ), */
        ],
      ),
    );
  }
}

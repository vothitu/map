/* import 'package:flutter/cupertino.dart';
import 'package:simple_animations/simple_animations.dart';

enum AniProps { opacity, translateY }

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child);

  final _tween = MultiTween<AniProps>()
    ..add(AniProps.opacity, Tween(begin: 0.0, end: 1.0),
        Duration(milliseconds: 500))
    ..add(AniProps.translateY, Tween(begin: -30.0, end: 0.0),
        Duration(milliseconds: 500), Curves.easeOut);

  @override
  Widget build(BuildContext context) {
    return PlayAnimation<MultiTweenValues<AniProps>>(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: Duration(seconds: 1),
      tween: _tween,
      child: child,
      builder: (context, child, value) => Opacity(
        opacity: value.get(AniProps.opacity),
        child: Transform.translate(
            offset: Offset(0, value.get(AniProps.translateY)), child: child),
      ),
    );
  }
}
 */
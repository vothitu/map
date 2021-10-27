import 'package:dtumaps/screens/general/location.dart';
import 'package:dtumaps/screens/detail_facility/sub_screen/detail_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'expanded_content.dart';
import 'image.dart';

class LocationWidget extends StatefulWidget {
  final Location location;

  const LocationWidget({
    required this.location,
    Key? key,
  }) : super(key: key);

  @override
  _LocationWidgetState createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.center,
      children: [
        AnimatedPositioned(
          duration: Duration(milliseconds: 300),
          bottom: isExpanded ? 28 : 50,
          width: isExpanded ? size.width * 0.78 : size.width * 0.7,
          height: isExpanded ? size.height * 0.45 : size.height * 0.5,
          child: ExpandedContentWidget(location: widget.location),
        ),
        AnimatedPositioned(
          duration: Duration(milliseconds: 300),
          bottom: isExpanded ? 100 : 50,
          child: GestureDetector(
            onPanUpdate: onPanUpdate,
            onTap: openDetailPage,
            child: ImageWidget(location: widget.location),
          ),
        ),
      ],
    );
  }

  void openDetailPage() {
    if (!isExpanded) {
      /// Tap to expand card
      setState(() => isExpanded = true);
      return;
    }

    Navigator.of(context).push(
      PageRouteBuilder(
        transitionDuration: Duration(seconds: 1),
        reverseTransitionDuration: Duration(seconds: 1),
        pageBuilder: (context, animation, secondaryAnimation) {
          final curvedAnimation = CurvedAnimation(
            parent: animation,
            curve: Interval(0, 0.5),
          );

          return FadeTransition(
            opacity: curvedAnimation,
            child:
                DetailScreen(location: widget.location, animation: animation),
          );
        },
      ),
    );
  }

  void onPanUpdate(DragUpdateDetails details) {
    if (details.delta.dy < 0) {
      setState(() {
        isExpanded = true;
      });
    } else if (details.delta.dy > 0) {
      setState(() {
        isExpanded = false;
      });
    }
  }
}

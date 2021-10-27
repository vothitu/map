import 'package:dtumaps/screens/home/components/facility.dart';
import 'package:dtumaps/screens/home/components/bottom_sheet.dart';
import 'package:dtumaps/utilize/screen_size.dart';
import 'package:flutter/material.dart';

class FacilityCard extends StatelessWidget {
  const FacilityCard({
    Key? key,
    this.width = 140,
    this.aspectRatio = 1.02,
    required this.product,
  }) : super(key: key);

  final double width, aspectRatio;
  final Facility product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet<dynamic>(
                context: context,
                backgroundColor: Colors.transparent,
                builder: (context) => DraggableScrollableSheet(
                    initialChildSize: 0.85,
                    builder: (_, controller) => MyBottomSheet()));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    product.images[0],
                    width: getProportionateScreenWidth(width),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                product.title,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

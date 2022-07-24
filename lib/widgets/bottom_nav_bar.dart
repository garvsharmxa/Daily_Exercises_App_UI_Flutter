import 'package:exercises/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavItem extends StatelessWidget {
  final String svgScr;
  final String title;
  final Function press;
  final bool inActive;
  const BottomNavItem({
    Key? key,
    required this.svgScr,
    required this.title,
    required this.press,
    this.inActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(svgScr,
              color: inActive ? kActiveIconColor : kTextColor),
          Text(
            title,
            style: TextStyle(
                color: inActive ? kActiveIconColor : kTextColor,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

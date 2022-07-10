import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';


class CategoryCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;
  const CategoryCard({
    Key? key,
    required this.svgSrc,
    required this.title, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(borderRadius: BorderRadius.circular(13),

      child: Container(
        //padding: EdgeInsets.all(17),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 17,
                  spreadRadius: -23,
                  color: kBlueColor)
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(onTap: press(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SvgPicture.asset(svgSrc),
                  Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7E57C2)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ui_challenge/config/theme/colors.dart';

class Tasklist extends StatelessWidget {
  const Tasklist({
    super.key,
    required this.iconPath,
    required this.tasks,
    required this.tasksLeft,
    required this.heading,
  });

  final String iconPath;
  final String heading;
  final int tasks;
  final int tasksLeft;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(7),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(5)
          ),
          child: SvgPicture.asset(
            iconPath,
            width: 24,
            height: 24,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              heading,
              style: TextStyle(
                color: white,
                fontFamily: "Poppins",
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              child: Row(
                children: <Widget>[
                  Text(
                    "$tasks tasks now",
                    style: TextStyle(
                      color: grey,
                      fontFamily: "Poppins",
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 7),
                    width: 4,
                    height: 4,
                    decoration: BoxDecoration(
                      color: grey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Text(
                    "$tasksLeft started",
                    style: TextStyle(
                      color: grey,
                      fontFamily: "Poppins",
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}


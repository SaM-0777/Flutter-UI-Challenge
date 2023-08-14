import 'package:flutter/material.dart';
import 'package:ui_challenge/config/theme/colors.dart';


class CalenderCell extends StatelessWidget {
  final bool isBold;
  final bool isActive;
  final String text;
  final bool isCurrent;

  const CalenderCell({
    super.key,
    required this.isBold,
    required this.isActive,
    required this.text,
    required this.isCurrent,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isCurrent ? black : null,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 15,
            fontWeight: isBold ? FontWeight.w900 : FontWeight.w600,
            color: isActive ? isCurrent ? white : black : grey,
          ),
        ),
      ),
    );
  }
}

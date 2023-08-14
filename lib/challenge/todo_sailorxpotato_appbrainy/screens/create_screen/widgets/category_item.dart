import 'package:flutter/material.dart';
import 'package:ui_challenge/config/theme/colors.dart';

class CategoryItem extends StatelessWidget {
  final String category;

  const CategoryItem({
    super.key, required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 14),
      decoration: BoxDecoration(
        color: black,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Text(
        category,
        style: TextStyle(
          color: white,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

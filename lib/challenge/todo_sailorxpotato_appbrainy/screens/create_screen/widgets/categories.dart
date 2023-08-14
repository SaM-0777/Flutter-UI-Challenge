import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_challenge/config/theme/colors.dart';

import 'category_item.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
    required List<String> categories,
  }) : _categories = categories;

  final List<String> _categories;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.start,
      runSpacing: 16,
      spacing: 16,
      children: <Widget>[
        ..._categories.map<Widget>((category) {
          return CategoryItem(
            category: category,
          );
        }).toList(),
        GestureDetector(
          onTap: (){},
          child: Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: black,
              borderRadius: BorderRadius.circular(5)
            ),
            child: SvgPicture.asset(
              "assets/icons/AddIcon.svg",
              width: 21,
              height: 21,
            ),
          ),
        )
      ],
    );
  }
}

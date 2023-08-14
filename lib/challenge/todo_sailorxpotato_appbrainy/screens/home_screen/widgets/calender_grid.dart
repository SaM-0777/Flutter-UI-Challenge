import 'package:flutter/material.dart';

import 'package:ui_challenge/config/constants/dates.dart';
import 'package:ui_challenge/config/theme/colors.dart';

import 'calender_cell.dart';

class CalenderGrid extends StatelessWidget {
  const CalenderGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 10 + MediaQuery.of(context).size.height / 3 ,
      padding: const EdgeInsets.fromLTRB(30, 30, 30, 20),
      decoration: BoxDecoration(
        color: white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(44),
          topRight: Radius.circular(44),
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Calender",
                style: TextStyle(
                  color: black,
                  fontFamily: "Poppins",
                  fontSize: 18,
                  fontWeight: FontWeight.w700
                ),
              ),
              Text(
                "2023 May",
                style: TextStyle(
                  color: black,
                  fontFamily: "Poppins",
                  fontSize: 18,
                  fontWeight: FontWeight.w700
                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Expanded(
            child: ScrollConfiguration(
              behavior: const ScrollBehavior().copyWith(overscroll: false),
              child: GridView.count(
                scrollDirection: Axis.vertical,
                crossAxisCount: 7,
                childAspectRatio: 1.45,
                padding: EdgeInsets.zero,
                children: dates.map<Widget>((i) {
                  DateTime currentDate = DateTime(2023, 5, 24);
                  return CalenderCell(
                    isBold: i == DateTime(2023, 5, 21),
                    isActive: i.month == currentDate.month,
                    text: "${i.day}",
                    isCurrent: i.day == currentDate.day,
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:ui_challenge/config/theme/colors.dart';

import 'calender_grid.dart';
import 'header.dart';
import 'task_list.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Column(
        children: <Widget>[
          const Header(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "My tasks",
                    style: TextStyle(
                      color: white,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Tasklist(
                    iconPath: "assets/icons/ClockIcon.svg",
                    heading: "To do",
                    tasks: 13,
                    tasksLeft: 1,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Tasklist(
                    iconPath: "assets/icons/PaperplaneIcon.svg",
                    heading: "In progress",
                    tasks: 5,
                    tasksLeft: 5,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Tasklist(
                    iconPath: "assets/icons/ThumbsupIcon.svg",
                    heading: "Done",
                    tasks: 21,
                    tasksLeft: 21,
                  ),
                ],
              ),
            ),
          ),
          const CalenderGrid(),
        ],
      ),
    );
  }
}

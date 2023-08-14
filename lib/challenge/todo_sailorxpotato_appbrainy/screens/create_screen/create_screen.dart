import 'package:flutter/material.dart';
import 'package:ui_challenge/config/theme/colors.dart';

import 'widgets/categories.dart';
import 'widgets/form_text_field.dart';
import 'widgets/header.dart';
import 'widgets/remind_me.dart';

class CreateTodoScreen extends StatelessWidget {
  const CreateTodoScreen({super.key});


  @override
  Widget build(BuildContext context) {

    List<String> categories = [
      "School project",
      "Workout",
      "Meeting",
    ];

    return Scaffold(
      backgroundColor: black,
      body: Column(
        children: <Widget>[
          const Header(),
          Expanded(
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.fromLTRB(30, 40, 30, 20),
              decoration: BoxDecoration(
                color: white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(44),
                  topRight: Radius.circular(44),
                )
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const FormTextField(
                    label: "Date",
                    iconPath: "assets/icons/CalenderIcon.svg",
                  ),
                  const Spacer(),
                  const FormTextField(
                    label: "Starting Time",
                    iconPath: "assets/icons/CalenderIcon.svg",
                  ),
                  const Spacer(),
                  const RemindMe(),
                  const Spacer(),
                  Text(
                    "Category",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: grey,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Categories(categories: categories),
                  const Spacer(),
                  Align(
                    child: TextButton(
                      onPressed: (){},
                      style: ButtonStyle(
                        padding: MaterialStateProperty.resolveWith((states) => const EdgeInsets.symmetric(horizontal: 32, vertical: 10)),
                        alignment: Alignment.center,
                        side: MaterialStateBorderSide.resolveWith((states) => BorderSide(
                          color: black,
                          width: 4,
                        ))
                      ),
                      child: Text(
                        "Create",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          color: black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

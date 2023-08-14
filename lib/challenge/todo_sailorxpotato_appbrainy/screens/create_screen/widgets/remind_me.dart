import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_challenge/challenge/todo_sailorxpotato_appbrainy/widgets/custom_switch.dart';
import 'package:ui_challenge/config/theme/colors.dart';

class RemindMe extends StatelessWidget {
  const RemindMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(7),
          decoration: BoxDecoration(
            color: black,
            borderRadius: BorderRadius.circular(5)
          ),
          child: SvgPicture.asset(
            "assets/icons/BellIcon.svg",
            width: 24,
            height: 24,
          ),
        ),
        const SizedBox(width: 15,),
        Text(
          "Remind me",
          style: TextStyle(
            color: black,
            fontFamily: "Poppins",
            fontSize: 16,
            fontWeight: FontWeight.w600
          ),
        ),
        const Spacer(),
        CustomSwitch(
          value: false,
          onChanged: (value){
            !value;
          }
        ),
      ],
    );
  }
}

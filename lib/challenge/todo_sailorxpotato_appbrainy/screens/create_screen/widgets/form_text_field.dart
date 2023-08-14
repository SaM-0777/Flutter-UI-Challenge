import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ui_challenge/config/theme/colors.dart';


class FormTextField extends StatelessWidget {
  final String iconPath;
  final String label;

  const FormTextField({
    super.key, required this.iconPath, required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
            color: grey,
            fontFamily: "Poppins",
            fontSize: 15,
          ),
        ),
        TextField(
          keyboardType: TextInputType.datetime,
          cursorColor: black,
          maxLines: 1,
          style: TextStyle(
            fontFamily: "Poppins",
            color: black,
            fontWeight: FontWeight.w700
          ),
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
              child: SvgPicture.asset(
                iconPath,
              ),
            ),
            
            hintStyle: TextStyle(
              color: black,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: black,
                width: 1,
              )
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: grey,
                width: 1,
              )
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_challenge/config/theme/colors.dart';


class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.fromLTRB(25, 50, 25, 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: (){},
              padding: EdgeInsets.zero,
              icon: SvgPicture.asset(
                "assets/icons/HamburgerMenuIconWhite.svg",
                width: 32,
                height: 32,
              ),
            ),
          ),
          Text(
            "Create new task",
            style: TextStyle(
              color: white,
              fontFamily: "Poppins",
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 20,),
          Text(
            "Task name",
            style: TextStyle(
              color: white,
              fontFamily: "Poppins",
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 5,),
          SizedBox(
            width: 160,
            child: TextField(
              style: TextStyle(
                fontFamily: "Poppins",
                color: white,
                fontSize: 15,
              ),
              cursorColor: white,
              decoration: InputDecoration(
                hintText: "Name",
                hintStyle: TextStyle(
                  color: grey,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: white,
                    width: 2,
                  )
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: grey,
                    width: 2,
                  )
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}

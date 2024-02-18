import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moamen_tamimy_portofolio/core/helper/values/colors.dart';

class AppBarButton extends StatelessWidget {
  final String title;
  final Function onTap;
  final bool isBordered;
  final IconData? icon;
  final Color? backGroundColor;
  final Color? borderColor;

  const AppBarButton(
      {super.key,
      required this.title,
      required this.onTap,
      this.isBordered = false,
      this.icon, this.backGroundColor, this.borderColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(backGroundColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                side: isBordered
                    ? BorderSide(width: 1, color: borderColor??C.mainColor1)
                    : BorderSide.none,
                borderRadius: BorderRadius.circular(18.0))),
      ),
      child: Wrap(
        children: [
          if (icon != null) Icon(icon),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: GoogleFonts.lato(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      onPressed: () => onTap(),
    );
  }
}

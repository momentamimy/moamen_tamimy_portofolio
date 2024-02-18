import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moamen_tamimy_portofolio/core/helper/screen_utils/values_manger.dart';

class KeyAndValueWidget extends StatelessWidget {
  final String stringKey, value;

  const KeyAndValueWidget(
      {super.key, required this.stringKey, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            "$stringKey:",
            style: GoogleFonts.lato(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent),
          ),
        ),
        SizedBox(width: AppPadding.p10),
        Expanded(
          child: Text(
            value,
            style: GoogleFonts.lato(
                fontSize: 30,
                fontWeight: FontWeight.normal,
                color: Colors.blueAccent),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageTitleWidget extends StatelessWidget {
  final String title;

  const PageTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: TextAlign.center,
        style: GoogleFonts.anton(
          fontSize: 60,
          fontWeight: FontWeight.bold,
          color: Colors.blueAccent,
        ));
  }
}

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moamen_tamimy_portofolio/screens/pages/home/provider/home_page_provider.dart';
import 'package:provider/provider.dart';

class AnimatedTextHi extends StatelessWidget {
  const AnimatedTextHi({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomePageProvider>(context,listen: false);
    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
          "Hi, my name is",
          textStyle: GoogleFonts.lato(color: Colors.lightBlueAccent,fontSize: 20),
          speed: const Duration(milliseconds: 150),

        ),
      ],
      onFinished: () => provider.hiTextAnimationFinished(),
      isRepeatingAnimation: false,
      displayFullTextOnTap: true,
      stopPauseOnTap: true,
    );
  }
}

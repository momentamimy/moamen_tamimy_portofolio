import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moamen_tamimy_portofolio/screens/pages/home/provider/home_page_provider.dart';
import 'package:provider/provider.dart';

class AnimatedTextBody extends StatelessWidget {
  const AnimatedTextBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<HomePageProvider, bool>(
        selector: (_, p) => p.isTitleTextAnimationFinished,
        builder: (context, isAnimationStart, child) => !isAnimationStart
            ? Container()
            : AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    "I'm an android/flutter developer in Nahdet Misr AI. I have around 3 years experience in mobile development and I graduated from Information Technology Institute (ITI) intake 40.",
                    speed: const Duration(milliseconds: 10),
                    textStyle: GoogleFonts.lato(
                      fontSize: 20,
                      color: const Color(0xFFa6a397),
                    ),
                  )
                ],
                repeatForever: false,
                isRepeatingAnimation: false,
              ));
  }
}

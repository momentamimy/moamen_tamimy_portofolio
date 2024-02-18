import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moamen_tamimy_portofolio/core/helper/values/constants.dart';
import 'package:moamen_tamimy_portofolio/screens/pages/home/provider/home_page_provider.dart';
import 'package:provider/provider.dart';

class AnimatedTextTitle extends StatelessWidget {
  const AnimatedTextTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomePageProvider>(context);
    return Selector<HomePageProvider, bool>(
        selector: (_, p) => p.isNameTextAnimationFinished,
        builder: (context, isAnimationStart, child) => !isAnimationStart
            ? Container()
            : AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    "I'm a senior Flutter Developer",
                    speed: Duration(milliseconds: 10),
                    textAlign: Q.isTablet?TextAlign.start:TextAlign.center,
                    textStyle: GoogleFonts.lato(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  )
                ],
                onFinished: () => provider.titleTextAnimationFinished(),
                repeatForever: false,
                isRepeatingAnimation: false,
              ));
  }
}

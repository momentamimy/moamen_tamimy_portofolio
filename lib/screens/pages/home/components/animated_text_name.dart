import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moamen_tamimy_portofolio/core/helper/screen_utils/values_manger.dart';
import 'package:moamen_tamimy_portofolio/core/helper/values/constants.dart';
import 'package:moamen_tamimy_portofolio/screens/pages/home/provider/home_page_provider.dart';
import 'package:provider/provider.dart';

class AnimatedTextName extends StatelessWidget {

  const AnimatedTextName({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomePageProvider>(context);

    return Selector<HomePageProvider, bool>(
        selector: (_, p) => p.isHiTextAnimationFinished,
        builder: (context, isAnimationStart, child) => !isAnimationStart
            ? const SizedBox.shrink()
            : AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    "Moamen ELTamimy",
                    speed: const Duration(milliseconds: 100),
                    textAlign: Q.isTablet ?TextAlign.start: TextAlign.center,
                    textStyle: GoogleFonts.anton(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  )
                ],
                onFinished: () => provider.nameTextAnimationFinished(),
                repeatForever: false,
                isRepeatingAnimation: false,
              ));
  }
}

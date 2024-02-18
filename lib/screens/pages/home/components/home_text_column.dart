import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moamen_tamimy_portofolio/core/helper/screen_utils/values_manger.dart';
import 'package:moamen_tamimy_portofolio/core/helper/values/colors.dart';
import 'package:moamen_tamimy_portofolio/core/helper/values/constants.dart';
import 'package:moamen_tamimy_portofolio/screens/pages/home/components/animated_text_hi.dart';
import 'package:moamen_tamimy_portofolio/screens/pages/home/components/animated_text_name.dart';
import 'package:moamen_tamimy_portofolio/screens/pages/home/components/animated_text_title.dart';
import 'package:moamen_tamimy_portofolio/widgets/app_bar_button.dart';

class HomeTextColumn extends StatelessWidget {
  const HomeTextColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          Q.isTablet ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        const AnimatedTextHi(),
        SizedBox(height: AppPadding.p10),
        const AnimatedTextName(),
        SizedBox(height: AppPadding.p10),
        const AnimatedTextTitle(),
        SizedBox(height: AppPadding.p10),
        Wrap(
          children: [
            AppBarButton(
              title: tr("my_cv"),
              backGroundColor: C.mainColor2,
              onTap: () {},
            ),
            SizedBox(width: AppPadding.p4),
            AppBarButton(
              title: tr("my_work"),
              isBordered: true,
              borderColor: C.mainColor2,
              onTap: () {},
            ),
          ],
        )
        //AnimatedTextBody()
      ],
    );
  }
}

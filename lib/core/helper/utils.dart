import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moamen_tamimy_portofolio/core/helper/values/constants.dart';

class Utils {
  static Widget reversWidget(Widget child) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(pi),
      child: child,
    );
  }

  static changeLanguage(context) async {
    if (Q.isArabic) {
      Q.selectedLocale = Q.LOCALE_EN;
    } else {
      Q.selectedLocale = Q.LOCALE_AR;
    }
    Get.updateLocale(Q.selectedLocale);
    EasyLocalization.of(context)!
        .setLocale(Q.selectedLocale);
  }
}

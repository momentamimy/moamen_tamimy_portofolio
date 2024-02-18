import 'package:flutter/material.dart';
import 'package:moamen_tamimy_portofolio/core/helper/screen_utils/values_manger.dart';

class Q {

  //hero animation
  static const String appLogo = "app_logo";

  static const String sharedPrefToken = "sharedPrefToken";

  static const bool IS_CONNECTED = false;

  static const String VERSION_NAME = "0.0.1";
  static const String APP_NAME = "lawyer_office_app";

  static const LOCALE_AR = Locale('ar', 'EG');
  static const LOCALE_EN = Locale('en', 'US');

  static Locale selectedLocale = LOCALE_EN;
  static var supportedLanguages = [
    LOCALE_AR,
    LOCALE_EN,
  ];

  static bool get isArabic => selectedLocale == LOCALE_AR;

  static bool get isWeb => AppRatio.w1_0 > 1200;
  static bool get isTablet => AppRatio.w1_0 > 600;


}

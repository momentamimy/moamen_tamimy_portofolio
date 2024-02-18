import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:moamen_tamimy_portofolio/core/helper/localization/fallback_cupertino_localisations_delegate.dart';
import 'package:moamen_tamimy_portofolio/core/helper/navigation_utils.dart';
import 'package:moamen_tamimy_portofolio/core/helper/values/constants.dart';
import 'package:moamen_tamimy_portofolio/core/shared_providers/providers_utils.dart';
import 'package:moamen_tamimy_portofolio/injection_container.dart';
import 'package:moamen_tamimy_portofolio/screens/main_screen.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  InjectionContainer().init();
  await EasyLocalization.ensureInitialized();
  runApp(MultiProvider(
    providers: ProviderUtils.sharedProviderList,
    child: EasyLocalization(
      saveLocale: true,
      supportedLocales: Q.supportedLanguages,
      path: 'assets/translations',
      fallbackLocale: Q.selectedLocale,
      child: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        ensureScreenSize: true,
        builder: (context, child) {
          return GetMaterialApp(
            scrollBehavior: _AppScrollBehavior(),
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            key: ValueKey<Locale>(context.locale),
            getPages: NavigateUtils.routes,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              const FallbackCupertinoLocalisationsDelegate(),
              EasyLocalization.of(context)!.delegate
            ],
            initialRoute: MainScreen.route,
          );
        });
  }
}


class _AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.trackpad,
  };
}
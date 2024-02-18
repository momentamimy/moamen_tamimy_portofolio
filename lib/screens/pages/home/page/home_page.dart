import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:moamen_tamimy_portofolio/core/helper/screen_utils/values_manger.dart';
import 'package:moamen_tamimy_portofolio/core/helper/values/constants.dart';
import 'package:moamen_tamimy_portofolio/screens/pages/home/components/circular_profile_image.dart';
import 'package:moamen_tamimy_portofolio/screens/pages/home/components/home_text_column.dart';
import 'package:moamen_tamimy_portofolio/screens/pages/home/provider/home_page_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomePageProvider(),
        builder: (context, child) {
          return Container(
              constraints: BoxConstraints(minHeight: AppRatio.screenHeight),
              padding: EdgeInsets.all(AppPadding.p10),
              child: Q.isWeb
                  ? const _WebUi()
                  : Q.isTablet
                      ? const _TabletUi()
                      : const _MobileUi());
        });
  }
}

class _WebUi extends StatelessWidget {
  const _WebUi();

  @override
  Widget build(BuildContext context) {
    return const _TabletUi();
  }
}

class _TabletUi extends StatelessWidget {
  const _TabletUi();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Spacer(),
        CircularProfileImage(size: 300),
        Spacer(),
        Expanded(flex: 5, child: HomeTextColumn())
      ],
    );
  }
}

class _MobileUi extends StatelessWidget {
  const _MobileUi();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircularProfileImage(size: 200),
        SizedBox(height: AppPadding.p10),
        const HomeTextColumn()
      ],
    );
  }
}

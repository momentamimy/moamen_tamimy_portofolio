import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:moamen_tamimy_portofolio/core/helper/screen_utils/values_manger.dart';
import 'package:moamen_tamimy_portofolio/core/helper/values/constants.dart';
import 'package:moamen_tamimy_portofolio/screens/pages/about/components/key_and_value_widget.dart';
import 'package:moamen_tamimy_portofolio/widgets/page_title_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(minHeight: AppRatio.screenHeight),
        padding: EdgeInsets.all(AppPadding.p10),
        child: Q.isWeb
            ? const _WebUi()
            : Q.isTablet
                ? const _TabletUi()
                : const _MobileUi());
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PageTitleWidget(title: tr("about_me")),
        SizedBox(height: AppPadding.p20),
        KeyAndValueWidget(
          stringKey: tr("Name"),
          value: "Moamen EL Tamimy",
        ),
        SizedBox(height: AppPadding.p10),
        KeyAndValueWidget(
          stringKey: tr("date_of_birth"),
          value: "24 feb 1996",
        ),
        SizedBox(height: AppPadding.p10),
        KeyAndValueWidget(
          stringKey: tr("address"),
          value: "Agouza, Giza Governorate",
        ),
        SizedBox(height: AppPadding.p10),
        KeyAndValueWidget(
          stringKey: tr("email"),
          value: "momentamimy@gmail.com",
        ),
        SizedBox(height: AppPadding.p10),
        KeyAndValueWidget(
          stringKey: tr("phone"),
          value: "+20-1021155607",
        )
      ],
    );
  }
}

class _MobileUi extends StatelessWidget {
  const _MobileUi();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moamen_tamimy_portofolio/core/helper/screen_utils/values_manger.dart';
import 'package:moamen_tamimy_portofolio/core/helper/utils.dart';
import 'package:moamen_tamimy_portofolio/core/helper/values/constants.dart';
import 'package:moamen_tamimy_portofolio/widgets/app_bar_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Q.isWeb) {
      return _webLayout(context);
    } else if (Q.isTablet) {
      return _tabletLayout(context);
    } else {
      return _mobileLayout(context);
    }
  }

  Widget _tabletLayout(BuildContext context) {
    return AppBar(
      elevation: AppSize.s2,
      backgroundColor: Colors.white,
      shadowColor: Colors.grey,
      actions: [
        const Spacer(),
        Text("Moamen ELTamimy",
            style: GoogleFonts.lobster(
                fontSize: 30, color: Colors.lightBlueAccent)),
        const Spacer(),
        AppBarButton(
          title: tr("menu"),
          onTap: () {
            Utils.changeLanguage(context);
          },
          isBordered: true,
        )
      ],
    );
  }

  Widget _webLayout(BuildContext context) {
    return AppBar(
      elevation: AppSize.s2,
      backgroundColor: Colors.white,
      shadowColor: Colors.grey,
      actions: [
        Text("Moamen ELTamimy",
            style: GoogleFonts.lobster(
                fontSize: AppFontSize.s8, color: Colors.lightBlueAccent)),
        const Spacer(),
        AppBarButton(title: tr("home"), onTap: () {}),
        AppBarButton(title: tr("about"), onTap: () {}),
        AppBarButton(title: tr("experience"), onTap: () {}),
        AppBarButton(title: tr("services"), onTap: () {}),
        AppBarButton(title: tr("projects"), onTap: () {}),
        AppBarButton(title: tr("skills"), onTap: () {}),
        AppBarButton(title: tr("contacts"), onTap: () {}),
        AppBarButton(
          title: tr("lang"),
          onTap: () {
            Utils.changeLanguage(context);
          },
          isBordered: true,
        )
      ],
    );
  }

  Widget _mobileLayout(BuildContext context) {
    return _tabletLayout(context);
  }
}


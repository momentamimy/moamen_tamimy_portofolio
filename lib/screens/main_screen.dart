import 'package:flutter/material.dart';
import 'package:moamen_tamimy_portofolio/core/helper/screen_utils/values_manger.dart';
import 'package:moamen_tamimy_portofolio/core/shared_providers/home_provider.dart';
import 'package:moamen_tamimy_portofolio/screens/pages/about/page/about_page.dart';
import 'package:moamen_tamimy_portofolio/screens/pages/home/page/home_page.dart';
import 'package:moamen_tamimy_portofolio/widgets/custom_app_bar.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static const route = "/homeScreen";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeProvider>(
      create: (context) => HomeProvider(),
      builder: (context, child) {
        return Scaffold(
          appBar: PreferredSize(
              preferredSize: Size(AppRatio.w1_0, AppRatio.appBarHeight),
              child: const CustomAppBar()),
          body: ListView(
            children: const [
              HomePage(),
              AboutPage()
            ],
          ),
        );
      },
    );
  }
}
import 'package:get/get.dart';
import 'package:moamen_tamimy_portofolio/screens/main_screen.dart';

class NavigateUtils {
  static List<GetPage> get routes => [
        GetPage(name: MainScreen.route, page: () => const MainScreen()),
      ];
}

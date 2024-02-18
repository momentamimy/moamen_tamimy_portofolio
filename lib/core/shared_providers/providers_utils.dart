import 'package:moamen_tamimy_portofolio/core/shared_providers/home_provider.dart';
import 'package:provider/provider.dart';

class ProviderUtils {
  static List<ChangeNotifierProvider> get sharedProviderList =>
      <ChangeNotifierProvider>[
        ChangeNotifierProvider<HomeProvider>(
            create: (context) => HomeProvider())
      ];
}

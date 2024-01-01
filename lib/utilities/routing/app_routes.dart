import 'package:demo_ecom/utilities/routing/app_pages.dart';
import 'package:demo_ecom/views/global_views/no_internet_connection/no_internet.dart';
import 'package:demo_ecom/views/splash/splash_screen.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page: () => const SplashScreen()),
    GetPage(name: Routes.NOINTERNET, page: () => const NoInternet()),
  ];
}

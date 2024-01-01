import 'package:demo_ecom/utilities/routing/app_pages.dart';
import 'package:demo_ecom/views/dashboard/dashboard_v.dart';
import 'package:demo_ecom/views/global_views/no_internet_w.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page: () => DashboardV()),
    GetPage(name: Routes.NOINTERNET, page: () => const NoInternetW()),
  ];
}

import 'package:demo_ecom/data/remote/services/network_service.dart';
import 'package:demo_ecom/view_models/dashboard_vm.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static void init() {
    Get.put<NetworkServices>(NetworkServices(), permanent: true);
    Get.lazyPut(() => DashboardVM());
  }
}

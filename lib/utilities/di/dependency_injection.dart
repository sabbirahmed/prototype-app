import 'package:demo_ecom/data/remote/services/network_service.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static void init() {
    Get.put<NetworkServices>(NetworkServices(), permanent: true);
  }
}

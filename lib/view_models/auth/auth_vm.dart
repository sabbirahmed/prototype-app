import 'package:demo_ecom/repository/auth/auth_repo.dart';
import 'package:get/get.dart' hide Response;

class AuthVM extends GetxController {
  var isLoading = false.obs;
  AuthRepo authRepo = AuthRepo();
  // login() async {
  //   isLoading(true);
  //   await authRepo.login(abz);
  //   isLoading(false);
  // }
}

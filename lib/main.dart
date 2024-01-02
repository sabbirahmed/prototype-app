import 'package:demo_ecom/resources/theme/app_theme.dart';
import 'package:demo_ecom/utilities/di/dependency_injection.dart';
import 'package:demo_ecom/utilities/routing/app_pages.dart';
import 'package:demo_ecom/utilities/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

void main(List<String> args) async {
  await initApp();
  runApp(const PrototypeApp());
}

Future<void> initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
}

class PrototypeApp extends StatelessWidget {
  const PrototypeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        title: 'PrototypeApp',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(),
        initialBinding: DependencyInjection(),
        getPages: AppPages.pages,
        initialRoute: Routes.INITIAL,
      ),
    );
  }
}

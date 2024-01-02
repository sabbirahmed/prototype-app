import 'package:demo_ecom/resources/assets/app_assets.dart';
import 'package:demo_ecom/resources/dimentions/app_sizes.dart';
import 'package:demo_ecom/resources/strings/string_manager.dart';
import 'package:demo_ecom/resources/text_styles/text_styles.dart';
import 'package:demo_ecom/view_models/dashboard_vm.dart';
import 'package:demo_ecom/view_models/home_vm.dart';
import 'package:demo_ecom/views/home/widgets/home_appbar_button_w.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAppbar extends StatelessWidget {
  HomeAppbar({super.key});

  HomeVM homeVM = Get.find();
  DashboardVM dashboardVM = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      width: Get.width,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.appbarPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HomeAppbarButtonW(
            callBackFunction: () {
              dashboardVM.scaffoldKey.currentState?.openDrawer();
            },
            icon: AppAssets.menu,
          ),
          Obx(
            () => homeVM.showSearchbar.value
                ? Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10,
                      ),
                      child: CustomTextField(
                        controller: homeVM.searchController,
                      ),
                    ),
                  )
                : Text(
                    AppStrings.drawerHeaderTitle.toUpperCase(),
                    style: titleMedium20,
                  ),
          ),
          HomeAppbarButtonW(
            callBackFunction: () {
              homeVM.toogleSearch();
            },
            icon: AppAssets.search,
          ),
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.controller,
  });

  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: Colors.black,
      style: bodyRegular14,
      decoration: const InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}

import 'package:demo_ecom/resources/assets/app_assets.dart';
import 'package:demo_ecom/views/home/widgets/home_appbar_button_w.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      width: Get.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HomeAppbarButtonW(
            callBackFunction: () {},
            icon: AppAssets.menu,
          ),
          HomeAppbarButtonW(
            callBackFunction: () {},
            icon: AppAssets.search,
          ),
        ],
      ),
    );
  }
}

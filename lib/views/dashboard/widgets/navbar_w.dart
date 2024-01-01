import 'package:demo_ecom/models/navbar_menu_m.dart';
import 'package:demo_ecom/resources/assets/app_assets.dart';
import 'package:demo_ecom/resources/color/app_colors.dart';
import 'package:demo_ecom/view_models/dashboard_vm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'navmenu_w.dart';

class NavbarW extends StatelessWidget {
  NavbarW({
    super.key,
  });

  List<NavbarMenuM> menuCategories = [
    NavbarMenuM(
      name: "Cart",
      index: 0,
      iconPath: AppAssets.cartFilled,
    ),
    NavbarMenuM(
      name: "Collect",
      index: 1,
      iconPath: AppAssets.favoriteFilled,
    ),
    NavbarMenuM(
      name: "Chat",
      index: 2,
      iconPath: AppAssets.chatFilled,
    ),
    NavbarMenuM(
      name: "My",
      index: 3,
      iconPath: AppAssets.personFilled,
    ),
  ];

  final DashboardVM _dashboardVM = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.cF2F2F2,
      height: 80,
      child: GetBuilder<DashboardVM>(
        init: _dashboardVM,
        initState: (_) {},
        builder: (_) {
          return Row(
            children: [
              ...menuCategories.map(
                (element) {
                  return NavbarMenuW(
                    isSelected: false,
                    element: element,
                  );
                },
              ).toList()
            ],
          );
        },
      ),
    );
  }
}

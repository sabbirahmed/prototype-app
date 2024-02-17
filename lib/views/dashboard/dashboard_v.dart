import 'dart:io';

import 'package:demo_ecom/view_models/dashboard_vm.dart';
import 'package:demo_ecom/views/dashboard/widgets/dashboard_navbar_w.dart';
import 'package:demo_ecom/views/home/homepage_v.dart';
import 'package:demo_ecom/views/home/widgets/drawer/drawer_item_list_w.dart';
import 'package:demo_ecom/views/home/widgets/drawer/home_drawer_w.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'widgets/dashboard_bottom_sheet_w.dart';

class DashboardV extends StatelessWidget {
  DashboardVM dashboardVM = Get.find();

  List<Widget> homePageTabs = [
    HomepageV(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
  ];

  DashboardV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: dashboardVM.scaffoldKey,
      drawer: CustomDrawer(
        drawerItems: [
          NewInDrawerItem(),
          BagsDrawerItem(),
          AccessoriesDrawerItem(),
          FashionDrawerItem(),
          GuidesDrawerItem(),
          SaleYourBagDrawerItem(),
          AuctionDrawerItem(),
          LanguageMoneyDrawerItem()
        ],
      ),
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DashboardNavbarW(),
          Platform.isIOS
              ? Container(
                  height: 20,
                  color: Colors.black,
                )
              : const Gap(0),
        ],
      ),
      body: GetBuilder<DashboardVM>(
        init: DashboardVM(),
        initState: (_) {},
        builder: (_) {
          return SizedBox(
            height: Get.height,
            width: Get.width,
            child: Stack(
              children: [
                PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: dashboardVM.navigationController,
                  itemCount: homePageTabs.length,
                  itemBuilder: (context, index) {
                    return homePageTabs[index];
                  },
                ),
                dashboardVM.showAddItemBottomSheet.value ? AddItemBottomSheet() : const SizedBox.shrink()
              ],
            ),
          );
        },
      ),
    );
  }
}

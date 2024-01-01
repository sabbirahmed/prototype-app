import 'dart:io';

import 'package:demo_ecom/view_models/dashboard_vm.dart';
import 'package:demo_ecom/views/dashboard/widgets/dashboard_navbar_w.dart';
import 'package:demo_ecom/views/home/homepage_v.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class DashboardV extends StatelessWidget {
  DashboardVM dashboardVM = Get.find();

  List<Widget> homePageTabs = [
    const HomepageV(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
  ];

  DashboardV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: dashboardVM.navigationController,
          itemCount: homePageTabs.length,
          itemBuilder: (context, index) {
            return homePageTabs[index];
          },
        ),
      ),
    );
  }
}

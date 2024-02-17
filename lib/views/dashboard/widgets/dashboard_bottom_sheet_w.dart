import 'package:animate_do/animate_do.dart';
import 'package:demo_ecom/view_models/dashboard_vm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/strings/string_manager.dart';

class AddItemBottomSheet extends StatelessWidget {
  AddItemBottomSheet({
    super.key,
  });
  DashboardVM dashboardVM = Get.find();

  @override
  Widget build(BuildContext context) {
    Widget bottomSheetWidget = GestureDetector(
      onTap: () {
        dashboardVM.toogleBottomSheet();
      },
      child: Container(
        height: Get.height,
        width: Get.width,
        color: Colors.black.withOpacity(.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
                child: Container(
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.sellBags,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const Text(AppStrings.post),
                      const Text(AppStrings.photo),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );

    return FadeInUp(
      duration: const Duration(milliseconds: 250),
      child: bottomSheetWidget,
    );
  }
}

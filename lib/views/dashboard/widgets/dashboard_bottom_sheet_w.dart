import 'package:animate_do/animate_do.dart';
import 'package:demo_ecom/view_models/dashboard_vm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/strings/string_manager.dart';
import '../../support_chat/support_chat_v.dart';

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
                      _AIBSButtons(
                        title: AppStrings.sellBags,
                        callBackFunction: () {
                          Get.to(
                            const SupportChatV(),
                          );
                        },
                      ),
                      const Divider(),
                      _AIBSButtons(
                        title: AppStrings.post,
                        callBackFunction: () {},
                      ),
                      const Divider(),
                      _AIBSButtons(
                        title: AppStrings.photo,
                        callBackFunction: () {},
                      ),
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

class _AIBSButtons extends StatelessWidget {
  _AIBSButtons({
    super.key,
    required this.title,
    required this.callBackFunction,
  });

  String title;
  Function callBackFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callBackFunction();
      },
      child: Container(
        width: Get.width,
        padding: const EdgeInsets.symmetric(vertical: 4),
        color: Colors.white,
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}

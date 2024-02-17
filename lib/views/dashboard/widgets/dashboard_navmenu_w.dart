import 'package:demo_ecom/models/dashboard_navbar_menu_m.dart';
import 'package:demo_ecom/resources/text_styles/text_styles.dart';
import 'package:demo_ecom/view_models/dashboard_vm.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class DashboardNavbarMenuW extends StatelessWidget {
  DashboardNavbarMenuW({
    super.key,
    required this.isSelected,
    required this.element,
  });

  final bool isSelected;
  final DashboardNavbarMenuM element;
  final DashboardVM dashboardVM = Get.find();

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          if (element.index == 2) {
            dashboardVM.toogleBottomSheet();
          }
        },
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 25,
                width: 25,
                child: Image.asset(
                  element.iconPath,
                  // color: Colors.black,
                ),
              ),
              const Gap(6),
              Text(
                element.name,
                style: bodyRegular12.copyWith(
                  color: Colors.black,
                  fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

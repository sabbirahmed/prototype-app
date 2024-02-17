import 'package:demo_ecom/models/drawer_item_model.dart';
import 'package:demo_ecom/resources/color/app_colors.dart';
import 'package:demo_ecom/resources/strings/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  final List<DrawerItem> drawerItems;

  const CustomDrawer({super.key, required this.drawerItems});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.zero),
      ),
      backgroundColor: AppColors.white,
      child: ListView(
        children: [
          SizedBox(
            height: 70.0,
            child: DrawerHeader(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
              child: Stack(
                children: [
                  Text(
                    AppStrings.drawerHeaderTitle,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Positioned(
                    right: 12,
                    top: 0,
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Icons.clear,
                        color: Colors.black12,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          ...drawerItems
              .map((e) => Column(
                    children: [
                      e.build(context),
                      const Divider(),
                    ],
                  ))
              .toList(),
        ],
      ),
    );
  }
}

import 'package:demo_ecom/resources/color/app_colors.dart';
import 'package:demo_ecom/resources/strings/string_manager.dart';
import 'package:demo_ecom/resources/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

abstract class DrawerItem {
  Widget build(BuildContext context);
}

class NewInDrawerItem implements DrawerItem {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(AppStrings.newInTitle),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}

class BagsDrawerItem implements DrawerItem {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(AppStrings.bagsTitle),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}

class AccessoriesDrawerItem implements DrawerItem {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(AppStrings.accessoriesTitle),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}

class FashionDrawerItem implements DrawerItem {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(AppStrings.fashionTitle),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}

class GuidesDrawerItem implements DrawerItem {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(AppStrings.guidesTitle),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}

class SaleYourBagDrawerItem implements DrawerItem {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(AppStrings.saleYourBagTitle),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}

class AuctionDrawerItem implements DrawerItem {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(AppStrings.auctionTitle),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}

class LanguageMoneyDrawerItem implements DrawerItem {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 60,
      child: Row(
        children: [
          SizedBox(width: 16,),
          Text("${AppStrings.englishTitle} >",style: bodyRegular16,),
          SizedBox(width: 16,),
          Text("${AppStrings.usdTitle}  \$ >",style: bodyRegular16)
        ],
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  final List<DrawerItem> drawerItems;

  CustomDrawer({super.key, required this.drawerItems});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.zero),
      ),
      backgroundColor: AppColors.white,
      child: ListView(
        children: [
          const SizedBox(
            height: 70.0,
            child: DrawerHeader(
              padding: EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
              child: Stack(
                children: [
                  Text(
                    AppStrings.drawerHeaderTitle,
                    style: titleMedium20,
                  ),
                  Positioned(
                      right: 0,
                      top: -5,
                      child: Icon(
                        Icons.clear,
                        color: Colors.black12,
                        size: 30,
                      ))
                ],
              ),
            ),
          ),
          for (int i = 0; i < drawerItems.length; i++) ...[
            drawerItems[i].build(context),
              const Divider(), // Add divider after each item except the last one
          ],
        ],
      ),
    );
  }
}

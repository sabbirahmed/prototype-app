import 'package:demo_ecom/views/drawer/abstract_widget/drawer_item_model.dart';
import 'package:demo_ecom/resources/strings/string_manager.dart';
import 'package:demo_ecom/resources/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

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
          SizedBox(
            width: 16,
          ),
          Text(
            "${AppStrings.englishTitle} >",
            style: bodyRegular16,
          ),
          SizedBox(
            width: 16,
          ),
          Text("${AppStrings.usdTitle}  \$ >", style: bodyRegular16)
        ],
      ),
    );
  }
}

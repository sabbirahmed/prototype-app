import 'package:demo_ecom/resources/color/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/strings/string_manager.dart';

class SupportChatV extends StatelessWidget {
  const SupportChatV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          AppStrings.supportChatTitle,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}

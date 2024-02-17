import 'dart:io';

import 'package:demo_ecom/resources/color/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/strings/string_manager.dart';
import '../../utilities/keyboard_helpers.dart';
import '../global_widgets/chat_message_bubble_widget.dart';
import '../global_widgets/custom_text_field.dart';

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
        centerTitle: true,
        title: Text(
          AppStrings.supportChatTitle,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Column(
          children: [
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeBottom: true,
                removeTop: true,
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return ChatMessageBubble(
                      isCurrentUser: index % 2 == 0,
                    );
                  },
                ),
              ),
            ),
            Container(
              // height: Platform.isIOS ? 100 : kToolbarHeight,
              width: double.maxFinite,
              color: Colors.white,
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      controller: TextEditingController(),
                      hintText: "Send message...",
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Align(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(
                            45,
                          ),
                        ),
                        child: const Icon(
                          Icons.send_outlined,
                          color: Colors.white,
                          weight: .1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            isKeyboardActive(context)
                ? const SizedBox(height: 0)
                : SizedBox(
                    height: Platform.isIOS ? 25 : 0,
                  )
          ],
        ),
      ),
    );
  }
}

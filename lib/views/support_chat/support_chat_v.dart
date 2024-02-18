// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:demo_ecom/resources/color/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/strings/string_manager.dart';
import '../../utilities/keyboard_helpers.dart';
import '../global_widgets/chat_message_bubble_widget.dart';
import '../global_widgets/custom_text_field.dart';

class SupportChatV extends StatefulWidget {
  const SupportChatV({super.key});

  @override
  State<SupportChatV> createState() => _SupportChatVState();
}

class _SupportChatVState extends State<SupportChatV> {
  List<DummyChatModel> dummyChatList = [
    DummyChatModel(id: 1, message: """XXX先生/女士，您好。欢迎使用ginzaxiaoma回收寄卖服务，请按照以下指南，拍摄上传您的包包照片，以及包包信息，以便鉴定师准确识别，精准报价。

1、拍摄照片xxxxxxxxxx
2、xxxxxxxx
3、包包名称以及款式xxxx
4、配件，刻印等信息xxxxx"""),
  ];

  TextEditingController messageController = TextEditingController();

  final ScrollController chatScrollController = ScrollController();
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
                  physics: const ClampingScrollPhysics(),
                  controller: chatScrollController,
                  itemCount: dummyChatList.length,
                  itemBuilder: (context, index) {
                    DummyChatModel chat = dummyChatList[index];
                    return ChatMessageBubble(
                      isCurrentUser: chat.id % 2 == 0,
                      chatModel: chat,
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
                      controller: messageController,
                      hintText: "Send message...",
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Align(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          dummyChatList.add(
                            DummyChatModel(
                              id: 2,
                              message: messageController.text,
                            ),
                          );
                        });

                        messageController.clear();
                        chatScrollController.animateTo(
                          chatScrollController.position.maxScrollExtent + 500,
                          duration: const Duration(milliseconds: 50),
                          curve: Curves.easeInOut,
                        );

                        Future.delayed(const Duration(seconds: 2)).then((value) {
                          setState(() {
                            dummyChatList.add(supportChat2);
                            dummyChatList.add(supportChat3);
                          });
                          chatScrollController.animateTo(
                            chatScrollController.position.maxScrollExtent + 500,
                            duration: const Duration(milliseconds: 50),
                            curve: Curves.easeInOut,
                          );
                        });
                      },
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

class DummyChatModel {
  int id;
  String message;
  DummyChatModel({
    required this.id,
    required this.message,
  });
}

DummyChatModel supportChat2 = DummyChatModel(id: 1, message: """感谢您提供的信息，我们将根据您提供的信息进行初步鉴定。请稍候…""");
DummyChatModel supportChat3 = DummyChatModel(id: 1, message: """感谢您的等候，根据鉴定以下是初步估值信息：
状态：未使用
回收估值： 100000HKD
寄卖估值： 120000HKD
※初步估值仅为参考值
请问是否进行下一步？ 
xxxxxxxxx""");

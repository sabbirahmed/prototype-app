import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAppbarButtonW extends StatelessWidget {
  HomeAppbarButtonW({
    super.key,
    required this.callBackFunction,
    required this.icon,
  });

  Function callBackFunction;
  String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callBackFunction();
      },
      child: Container(
        width: 50,
        height: Get.height,
        padding: const EdgeInsets.all(15),
        child: SizedBox(
          child: Image.asset(
            icon,
          ),
        ),
      ),
    );
  }
}

import 'package:demo_ecom/view_models/home_vm.dart';
import 'package:demo_ecom/views/home/widgets/home_appbar_w.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomepageV extends StatelessWidget {
  HomepageV({super.key});

  HomeVM homeVM = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HomeAppbar(),
            const Expanded(
              child: Placeholder(),
            ),
          ],
        ),
      ),
    );
  }
}

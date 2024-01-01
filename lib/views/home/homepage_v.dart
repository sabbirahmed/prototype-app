import 'package:demo_ecom/view_models/home_vm.dart';
import 'package:demo_ecom/views/home/widgets/home_appbar_w.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'widgets/home_advertisement_w.dart';
import 'widgets/home_carousel_slider_w.dart';
import 'widgets/home_product_w.dart';

class HomepageV extends StatelessWidget {
  HomepageV({super.key});

  HomeVM homeVM = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeAppbar(),
              HomeCarouselSlider(),
              Gap(10.h),
              HomeAdvertisement(),
              HomeProducts(),

              Gap(50.h),
            ],
          ),
        ),
      ),
    );
  }
}

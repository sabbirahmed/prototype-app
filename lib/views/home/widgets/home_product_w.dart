import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo_ecom/resources/strings/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../models/dummy_product_list_m.dart';
import '../../../resources/text_styles/text_styles.dart';
import '../../../view_models/home_vm.dart';
import 'product_w.dart';

class HomeProducts extends StatelessWidget {
  const HomeProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeVM>(
      builder: (homeViewModel) {
        return Column(
          children: [
            Gap(10.h),
            Text(
              AppStrings.justIn.toUpperCase(),
              style: titleMedium22,
            ),
            Gap(4.h),
            Container(
              height: 3.h,
              width: 50.w,
              color: Colors.amber,
            ),
            Gap(20.h),
            SizedBox(
              height: 300.h,
              width: MediaQuery.sizeOf(context).width,
              child: CarouselSlider.builder(
                itemCount: DummyProductListModelHandler().dummyProductList.length,
                carouselController: homeViewModel.controller,
                itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                  List<DummyProductListModel> productList = DummyProductListModelHandler().dummyProductList;
                  DummyProductListModel? product1 = itemIndex > (productList.length - 1) ? null : productList[itemIndex];
                  DummyProductListModel? product2 = (itemIndex + 1) > (productList.length - 1) ? null : productList[itemIndex + 1];
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      product1 == null
                          ? const SizedBox.shrink()
                          : ProductWidget(
                              dummyProductListModel: product1,
                            ),
                      product2 == null
                          ? const Expanded(
                              child: SizedBox.shrink(),
                            )
                          : ProductWidget(
                              dummyProductListModel: product2,
                            ),
                    ],
                  );
                },
                options: CarouselOptions(
                  aspectRatio: 1,
                  viewportFraction: 1,
                  autoPlay: false,
                  autoPlayInterval: const Duration(seconds: 5),
                  onPageChanged: (index, reason) {
                    homeViewModel.getCurrentPage(index);
                  },
                ),
              ),
            ),
            const Gap(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: DummyProductListModelHandler().dummyProductList.asMap().entries.map((entry) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 5.h,
                  width: (homeViewModel.currentPageIndex.value == entry.key) ? 15.w : 5.w,
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                  decoration: BoxDecoration(
                      color: (homeViewModel.currentPageIndex.value == entry.key) ? Colors.black : Colors.grey),
                );
              }).toList(),
            ),
            Gap(25.h),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: Text(
                AppStrings.viewAll.toUpperCase(),
                style: bodyMedium16.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

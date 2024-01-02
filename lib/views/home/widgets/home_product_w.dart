import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../resources/text_styles/text_styles.dart';
import '../../../view_models/home_vm.dart';
import '../data/dummy_product_list_model.dart';
import 'product_w.dart';

class HomeProducts extends StatelessWidget {
  const HomeProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeVM>(builder: (homeViewModel) {
      return SizedBox(
        child: Column(
          children: [
            const Gap(20),
            const Text(
              "JUST IN",
              style: titleRegular22,
            ),
            Gap(2.h),
            Container(
              height: 2.h,
              width: 50.w,
              color: Colors.amber,
            ),
            // PageView.builder(
            //   controller: homeViewModel.pageController,
            //   onPageChanged: (v){
            //     homeViewModel.getCurrentPage(v);
            //   },
            //   itemCount: DummyProductListModelHandler().dummyProductList.length,
            //   itemBuilder: (context, position) {
            //     return Container(
            //       child: Center(
            //         child: Text('Page $position'),
            //       ),
            //     );
            //   },
            // ),
            const Gap(20),
            SizedBox(
              height: 300.h,
              width: MediaQuery.sizeOf(context).width,
              child: CarouselSlider.builder(
                itemCount: DummyProductListModelHandler().dummyProductList.length,
                carouselController: homeViewModel.controller,
                itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProductWidget(
                      dummyProductListModel: DummyProductListModelHandler().dummyProductList[1],
                    ),
                    ProductWidget(
                      dummyProductListModel: DummyProductListModelHandler().dummyProductList[3],
                    ),
                  ],
                ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: DummyProductListModelHandler().dummyProductList.asMap().entries.map((entry) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 8.h,
                  width: (homeViewModel.currentPageIndex.value == entry.key) ? 30.w : 10.w,
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5), color: (homeViewModel.currentPageIndex.value == entry.key) ? Colors.black : Colors.grey),
                );
              }).toList(),
            ),

            Gap(20.h),

            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1, //                   <--- border width here
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5),
                child: Text("View All".toUpperCase()),
              ),
            )
          ],
        ),
      );
    });
  }
}

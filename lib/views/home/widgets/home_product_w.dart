import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../models/dummy_product_list_m.dart';
import '../../../view_models/home_vm.dart';
import 'product_w.dart';

class HomeProducts extends StatelessWidget {
  const HomeProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeVM>(
      builder: (homeViewModel) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            children: [
              Gap(10.h),
              Text(
                "JUST IN",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Gap(4.h),
              Container(
                height: 2.h,
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
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: DummyProductListModelHandler().dummyProductList.asMap().entries.map((entry) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    height: 8.h,
                    width: (homeViewModel.currentPageIndex.value == entry.key) ? 30.w : 10.w,
                    margin: EdgeInsets.symmetric(horizontal: 5.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: (homeViewModel.currentPageIndex.value == entry.key) ? Colors.black : Colors.grey,
                    ),
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
                  "View All".toUpperCase(),
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

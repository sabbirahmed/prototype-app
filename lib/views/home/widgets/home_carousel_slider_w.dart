import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../global_views/common_network_image_widget.dart';
import '../data/dummy_product_list_model.dart';

class HomeCarouselSlider extends StatefulWidget {
  const HomeCarouselSlider({super.key});

  @override
  State<HomeCarouselSlider> createState() => _HomeCarouselSliderState();
}

class _HomeCarouselSliderState extends State<HomeCarouselSlider> {

  int currentIndex = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            aspectRatio: 1,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          items: DummyProductListModelHandler().dummyProductList.reversed
              .map(
                (item) => ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: CommonNetworkImageWidget(
                imageLink: item.imageLink.toString(),
                boxFit: BoxFit.cover,
              ),
            ),
          )
              .toList(),
        ),
        Positioned(
          bottom: 20.h,
          right: 0,
          left: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: DummyProductListModelHandler().dummyProductList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child:
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 8.h,
                  width: (currentIndex == entry.key) ? 30.w : 10.w,
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: (currentIndex == entry.key) ? Colors.black : Colors.grey
                  ),
                ),
              );
            }).toList(),
          ),
        ),

      ],
    );
  }
}

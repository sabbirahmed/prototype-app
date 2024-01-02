import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeVM extends GetxController {
  var showSearchbar = false.obs;
  TextEditingController searchController = TextEditingController();

  final CarouselController controller = CarouselController();
  var currentPageIndex = 0.obs;
  var pageCount = 1.obs;

  var carouselWidgetIndex = 0.obs;

  void toogleSearch() {
    searchController.clear();
    showSearchbar.value = !showSearchbar.value;
  }

  getCurrentPage(int page) {
    currentPageIndex.value = page;
    update();
  }
}

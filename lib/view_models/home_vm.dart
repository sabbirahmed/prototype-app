import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeVM extends GetxController {
  var showSearchbar = false.obs;
  TextEditingController searchController = TextEditingController();

  void toogleSearch() {
    searchController.clear();
    showSearchbar.value = !showSearchbar.value;
  }
}

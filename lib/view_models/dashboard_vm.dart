import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardVM extends GetxController {
  PageController navigationController = PageController();

  //this key for drawer open
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
}

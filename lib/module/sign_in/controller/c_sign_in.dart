import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CSignIn extends GetxController {
  late Rx<TabController> tabController;

  RxBool isChecked = false.obs;

  void toggle(isChecked) {
    isChecked = true.obs;
    update();
  }
}

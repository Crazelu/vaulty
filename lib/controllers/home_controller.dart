import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late TextEditingController searchController;

  @override
  void onInit() {
    searchController = TextEditingController();
    super.onInit();
  }

  void search() {}

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }
}

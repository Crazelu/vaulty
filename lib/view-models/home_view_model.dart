import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
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

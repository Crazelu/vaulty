import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vaulty/utils/color_generator.dart';

class HomeController extends GetxController {
  late TextEditingController searchController;
  late ColorGenerator? colorGenerator;

  @override
  void onInit() {
    searchController = TextEditingController();
    colorGenerator = ColorGenerator();
    super.onInit();
  }

  Color getColor() {
    return colorGenerator!.generate();
  }

  void search() {}

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
    colorGenerator = null;
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vaulty/routes/router.dart';
import 'package:vaulty/ui/views/index.dart';
import 'package:vaulty/controllers/theme_controller.dart';

void main() {
  runApp(VaultyApp());
}

class VaultyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeController _themeController = Get.put(ThemeController());
    return Obx(
      () => GetMaterialApp(
        title: 'Vaulty',
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.rightToLeft,
        theme: _themeController.theme,
        getPages: VaultyRouter.routes,
        home: IndexView(),
      ),
    );
  }
}

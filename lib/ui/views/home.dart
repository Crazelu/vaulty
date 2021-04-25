import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vaulty/ui/shared/responsive_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaulty/controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  final HomeController _homeVM = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(builder: (context, size) {
      return Container(
        height: size.height,
        width: size.width,
        child: ListView(
          children: [
            //search widget
            Center(
              child: Container(
                height: 60.h,
                width: size.width * .8,
                decoration: BoxDecoration(
                    color: Color(0xfff9f9f9),
                    borderRadius: BorderRadius.circular(15.h)),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    suffix: IconButton(
                      icon: Icon(Icons.search_rounded),
                      onPressed: () {
                        _homeVM.search();
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

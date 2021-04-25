import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vaulty/controllers/home_controller.dart';
import 'package:vaulty/ui/shared/layout.dart';
import 'package:vaulty/ui/shared/extensions.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeController _homeController = Get.find();
    return LayoutWidget(builder: (context, size) {
      return Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          height: 60.h,
          width: size.width,
          decoration: BoxDecoration(
              color: Theme.of(context).shadowColor,
              borderRadius: BorderRadius.circular(15.h)),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.search_rounded,
                  color: Theme.of(context).hintColor,
                ),
                onPressed: () {
                  _homeController.search();
                },
              ),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
              disabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
        ),
      ).pad;
    });
  }
}

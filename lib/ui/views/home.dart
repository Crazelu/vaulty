import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vaulty/ui/shared/responsive_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaulty/controllers/home_controller.dart';
import 'package:vaulty/ui/shared/vertical_spacer.dart';

class HomeScreen extends StatelessWidget {
  final HomeController _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(builder: (context, size) {
      ScreenUtil.init(BoxConstraints.tight(size));
      return Container(
        height: size.height,
        width: size.width,
        child: ListView(
          children: [
            VerticalSpacer(),
            //search widget
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                height: 60.h,
                width: size.width * .8,
                decoration: BoxDecoration(
                    color: Color(0xfff9f9f9),
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
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    disabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
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

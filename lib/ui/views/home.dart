import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vaulty/models/account.dart';
import 'package:vaulty/ui/shared/app_card.dart';
import 'package:vaulty/ui/shared/last_accessed_apps_carousel.dart';
import 'package:vaulty/ui/shared/responsive_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaulty/controllers/home_controller.dart';
import 'package:vaulty/ui/shared/vertical_spacer.dart';
import 'package:vaulty/ui/shared/extensions.dart';

class HomeView extends StatelessWidget {
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
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    disabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
            ).pad,
            VerticalSpacer(flex: 2),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Last Accessed",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
              ),
            ).pad,
            VerticalSpacer(flex: 1.5),
            LastAccessedAppsCarousel(
                accounts: Account.accounts.take(3).toList()),
            VerticalSpacer(flex: 2),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Your apps",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
              ),
            ).pad,
            VerticalSpacer(flex: 1.5),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                alignment: Alignment.centerLeft,
                constraints: BoxConstraints(
                    maxHeight: size.height * .6,
                    minWidth: size.width,
                    maxWidth: size.width),
                child: ListView.builder(
                    itemCount: Account.accounts.length,
                    itemBuilder: (context, index) {
                      return AppCard(account: Account.accounts[index]);
                    }))
          ],
        ),
      );
    });
  }
}

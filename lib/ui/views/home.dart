import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vaulty/models/account.dart';
import 'package:vaulty/ui/shared/all_apps_listview.dart';
import 'package:vaulty/ui/shared/last_accessed_apps_carousel.dart';
import 'package:vaulty/ui/shared/responsive_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaulty/controllers/home_controller.dart';
import 'package:vaulty/ui/shared/custom_form_field.dart';
import 'package:vaulty/ui/shared/vertical_spacer.dart';
import 'package:vaulty/ui/shared/extensions.dart';
import 'package:vaulty/ui/views/add_account_info_view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeController _homeController = Get.put(HomeController());

  void showSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          final size = MediaQuery.of(context).size;
          return Container(height: size.height, width: size.width);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.h),
            topRight: Radius.circular(10.h),
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor);
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(Icons.add),
          onPressed: () {
            Get.to(AddAccountInfoView());
          },
        ),
        builder: (context, size) {
          ScreenUtil.init(BoxConstraints.tight(size));
          return Container(
            height: size.height,
            width: size.width,
            child: ListView(
              children: [
                VerticalSpacer(),
                CustomFormField(
                    hintText: 'Search',
                    searchIcon: Icons.search_rounded,
                    onSearch: () {
                      _homeController.search();
                    }),
                VerticalSpacer(flex: 2),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Last Accessed",
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
                  ),
                ).pad,
                VerticalSpacer(flex: 1.5),
                LastAccessedAppsCarousel(
                        accounts: Account.accounts.take(6).toList())
                    .pad,
                VerticalSpacer(flex: 2),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Your apps",
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                ).pad,
                VerticalSpacer(flex: 1.5),
                AllAppsListView(accounts: Account.accounts)
              ],
            ),
          );
        });
  }
}

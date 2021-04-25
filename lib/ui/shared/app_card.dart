import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vaulty/controllers/home_controller.dart';
import 'package:vaulty/models/account.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCard extends StatelessWidget {
  final Account account;

  const AppCard({Key? key, required this.account}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController _homeController = Get.find();
    return ListTile(
      leading: Container(
        alignment: Alignment.center,
        height: 45.w,
        width: 45.w,
        decoration: BoxDecoration(
          color: Theme.of(context).shadowColor,
          borderRadius: BorderRadius.circular(10.h),
        ),
        child: account.imageUrl != null && account.imageUrl!.isNotEmpty
            ? account.imageUrl!.icon
            : Text(
                account.appName.substring(0, 1).toUpperCase(),
                style: TextStyle(
                  color: _homeController.getColor(),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),
      ),
      title: Text(account.appName,
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600)),
      subtitle: Text(account.userName ?? account.email ?? ''),
      trailing:
          IconButton(icon: Icon(Icons.more_vert_rounded), onPressed: () {}),
    );
  }
}

extension ImageIconExtension on String {
  SizedBox get icon => SizedBox(
      child: Image.network(
        this,
        frameBuilder: (context, child, _, __) {
          return child;
        },
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return CupertinoActivityIndicator();
        },
      ),
      width: 35.w,
      height: 35.w);
}

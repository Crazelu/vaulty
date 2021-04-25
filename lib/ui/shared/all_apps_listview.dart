import 'package:flutter/material.dart';
import 'package:vaulty/models/account.dart';
import 'package:vaulty/ui/shared/app_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllAppsListView extends StatelessWidget {
  final List<Account> accounts;

  const AllAppsListView({Key? key, required this.accounts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      alignment: Alignment.centerLeft,
      constraints: BoxConstraints(
          maxHeight: size.height * .52,
          minWidth: size.width,
          maxWidth: size.width),
      child: ListView.builder(
        padding: EdgeInsets.only(bottom: 20.h),
        itemCount: accounts.length,
        itemBuilder: (context, index) {
          return AppCard(account: accounts[index]);
        },
      ),
    );
  }
}

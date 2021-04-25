import 'package:flutter/material.dart';
import 'package:vaulty/models/account.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaulty/ui/shared/extensions.dart';
import 'package:vaulty/ui/shared/horizontal_spacer.dart';

class LastAccessedAppsCarousel extends StatelessWidget {
  final List<Account> accounts;

  const LastAccessedAppsCarousel({Key? key, required this.accounts})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        alignment: Alignment.center,
        height: 80.h,
        width: constraints.maxWidth,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: accounts.length,
            itemBuilder: (context, index) {
              var account = accounts[index];
              return Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 65.w,
                    width: 65.w,
                    decoration: BoxDecoration(
                      color: Theme.of(context).shadowColor,
                      borderRadius: BorderRadius.circular(10.h),
                    ),
                    child:
                        account.imageUrl != null && account.imageUrl!.isNotEmpty
                            ? account.imageUrl!.lastAccessedIcon
                            : Text(
                                account.appName.substring(0, 1).toUpperCase(),
                                style: TextStyle(
                                  color: Theme.of(context).primaryColorDark,
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                  ),
                  HorizontalSpacer(
                    flex: 2,
                  )
                ],
              );
            }),
      );
    });
  }
}

import 'package:flutter/material.dart';
import 'package:vaulty/models/account.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCard extends StatelessWidget {
  final Account account;

  const AppCard({Key? key, required this.account}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        alignment: Alignment.center,
        height: 40.h,
        width: 40.h,
        decoration: BoxDecoration(
          color: Theme.of(context).shadowColor,
          borderRadius: BorderRadius.circular(10.h),
        ),
        child: account.imageUrl != null
            ? account.imageUrl!.icon
            : Text(account.appName.substring(0, 1).toUpperCase()),
      ),
      title: Text(account.appName),
      subtitle: Text(account.email ?? account.userName ?? ''),
      trailing:
          IconButton(icon: Icon(Icons.more_vert_rounded), onPressed: () {}),
    );
  }
}

extension ImageIconExtension on String {
  ImageIcon get icon => ImageIcon(NetworkImage(this), size: 20.w);
}

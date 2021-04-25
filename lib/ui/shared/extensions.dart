import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension PaddingExtension on Widget {
  Padding get pad => Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: this,
      );
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
  SizedBox get lastAccessedIcon => SizedBox(
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
      width: 55.w,
      height: 55.w);
}

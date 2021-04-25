import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final Function? onPressed;
  final Widget? child;
  final String text;
  final double padding;

  const CustomButton(
      {Key? key, this.onPressed, this.text: '', this.padding: 0, this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: padding.w),
      child: TextButton(
        style: ButtonStyle(
          minimumSize:
              MaterialStateProperty.resolveWith((states) => Size(200.w, 50.h)),
          foregroundColor: MaterialStateProperty.resolveWith(
              (states) => Theme.of(context).primaryColorLight),
          backgroundColor: MaterialStateProperty.resolveWith(
              (states) => Theme.of(context).buttonColor),
          overlayColor: MaterialStateProperty.resolveWith(
              (states) => Theme.of(context).highlightColor),
        ),
        onPressed: () {
          if (onPressed != null) onPressed!();
        },
        child: child != null
            ? child!
            : Text(
                text,
                style: TextStyle(fontSize: 18.sp),
              ),
      ),
    );
  }
}

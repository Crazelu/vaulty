import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vaulty/ui/shared/button.dart';
import 'package:vaulty/ui/shared/responsive_widget.dart';
import 'package:vaulty/ui/shared/extensions.dart';
import 'package:vaulty/ui/shared/vertical_spacer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecurityOnboardingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        appBar: AppBar(
          title: Text('Vaulty'),
          leading: IconButton(
              icon: Icon(
                Icons.keyboard_backspace,
                color: Theme.of(context).primaryColorDark,
              ),
              onPressed: () {
                Get.back();
              }),
        ),
        builder: (context, size) {
          return Container(
            height: size.height,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                VerticalSpacer(flex: 2),

                //Illustration goes here
                Container(
                  color: Colors.red,
                  height: 220.h,
                  width: size.width,
                ),
                VerticalSpacer(flex: 3),
                Text('Vaulty Password Security',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: Theme.of(context).primaryColorDark,
                      fontWeight: FontWeight.w600,
                    )),
                VerticalSpacer(),
                Text(
                    'Check the security and strengths of your passwords. Find out how strong your passwords are and get recommendations for stronger ones.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Theme.of(context).hintColor,
                    )),
                VerticalSpacer(flex: 5),
                Text(
                    'You are in control!\nYour passwords are encrypted and are NEVER shared with third party.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Theme.of(context).hintColor,
                    )),
                VerticalSpacer(flex: 3),

                CustomButton(
                  text: 'Get started',
                  onPressed: () {
                    Get.back();
                  },
                ),
              ],
            ),
          ).pad;
        });
  }
}

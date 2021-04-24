import 'package:flutter/cupertino.dart';
import 'package:vaulty/ui/shared/responsive_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(builder: (context, size) {
      return Container(
        height: size.height,
        width: size.width,
        child: ListView(
          children: [
            //search widget
            Center(
              child: Container(
                height: 60.h,
                decoration: BoxDecoration(),
              ),
            ),
          ],
        ),
      );
    });
  }
}

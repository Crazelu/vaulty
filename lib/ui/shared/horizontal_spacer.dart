import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalSpacer extends StatelessWidget {
  final double flex;

  const HorizontalSpacer({Key? key, this.flex: 1}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: (5 * flex).h);
  }
}

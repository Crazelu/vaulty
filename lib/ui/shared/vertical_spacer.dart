import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerticalSpacer extends StatelessWidget {
  final double flex;

  const VerticalSpacer({Key? key, this.flex: 1}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: (10 * flex).h);
  }
}

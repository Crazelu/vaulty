import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  final Widget Function(BuildContext context, Size size) builder;

  const LayoutWidget({Key? key, required this.builder}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return builder(
          context, Size(constraints.maxWidth, constraints.maxHeight));
    });
  }
}

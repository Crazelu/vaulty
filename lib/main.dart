import 'package:flutter/material.dart';
import 'package:vaulty/ui/theme/app_theme.dart';

void main() {
  runApp(VaultyApp());
}

class VaultyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vaulty',
      theme: lightTheme,
    );
  }
}

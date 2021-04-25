import 'package:flutter/material.dart';
import 'dart:math' as math;

class ColorGenerator {
  Color generate() {
    String characters = 'abcdef0123456789';
    String hex = '0xff';

    while (hex.length != 10) {
      hex += characters[math.Random().nextInt(characters.length)];
    }

    return Color(int.parse(hex));
  }
}

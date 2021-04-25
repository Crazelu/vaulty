import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vaulty/constants/constants.dart';
import 'package:vaulty/services/storage_service.dart';
import 'package:vaulty/ui/theme/app_theme.dart';

class ThemeController extends GetxController {
  late StorageService? _storageService;
  var _theme = lightTheme.obs;
  var _isLightTheme = true.obs;

  ThemeData get theme => _theme.value;

  @override
  void onInit() {
    super.onInit();
    _storageService = StorageService();
    getTheme();
  }

  //gets preferred theme on app start
  //defaults to light theme
  void getTheme() async {
    String appTheme = await _storageService!.read(THEME) ?? LIGHT_THEME;

    if (appTheme == LIGHT_THEME) {
      _theme.value = lightTheme;
    } else {
      _theme.value = darkTheme;
    }
    _isLightTheme.value = appTheme == LIGHT_THEME;
  }

  //toggles between light theme and dark theme
  void changeTheme() async {
    if (_isLightTheme.value) {
      _theme.value = darkTheme;
      await _storageService!.write(key: THEME, data: DARK_THEME);
    } else {
      _theme.value = lightTheme;
      await _storageService!.write(key: THEME, data: LIGHT_THEME);
    }
    _isLightTheme.value = !_isLightTheme.value;
  }

  @override
  void onClose() {
    super.onClose();
    _storageService = null;
  }
}

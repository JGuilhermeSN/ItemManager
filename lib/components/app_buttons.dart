import 'package:itemmanager/components/app_colors.dart';
import 'package:flutter/material.dart';

class AppButtons {
  static final menuButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppColors.darkerColor,
    foregroundColor: Colors.white,
  );
  static final cleanButtonStyle = TextButton.styleFrom(
    // backgroundColor: Colors.white,
    foregroundColor: Colors.red,
    // disabledBackgroundColor: Colors.black,
  );
}

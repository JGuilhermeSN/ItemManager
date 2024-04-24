import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:itemmanager/components/app_colors.dart';

class AppFormfield extends StatelessWidget {
  const AppFormfield({
    super.key,
    required this.titleLabel,
    required this.icon,
  });

  final String titleLabel;
  final Icon? icon; // Pode ou nao existir um icone no input

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelText: titleLabel,
          labelStyle: TextStyle(fontSize: 18, color: AppColors.mainColor),
          prefixIcon: icon,
          iconColor: AppColors.appbar,
          prefixIconColor: AppColors.focusColor,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: AppColors.mainColor)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.focusColor, width: 1.5))),
    );
  }
}

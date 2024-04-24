import 'package:itemmanager/components/app_colors.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget appbaritem(String barname) {
  return AppBar(
    centerTitle: true,
    backgroundColor: AppColors.appbar,
    title: Text(barname),
    titleTextStyle: TextStyle(
      fontSize: 20,
      color: AppColors.whitecolor,
    ),
  );
}

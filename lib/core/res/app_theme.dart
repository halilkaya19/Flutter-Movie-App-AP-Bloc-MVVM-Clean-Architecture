import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:real_project_bloc_api_lists/core/res/style/text_style.dart';

import 'color.dart';

class AppTheme {
  ThemeData appTheme() {
    return ThemeData(
      primaryColor: AppColors.redColor,
      scaffoldBackgroundColor: AppColors.blackColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: TextTheme(
        headlineMedium: AppStyle.instance.headlineMedium,
      ),
      appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          surfaceTintColor: AppColors.whiteColor,
          scrolledUnderElevation: 3,
          toolbarTextStyle: AppStyle.instance.bodyMedium,
          iconTheme: const IconThemeData(color: AppColors.whiteColor),
          backgroundColor: AppColors.greybgColor.withOpacity(0.5),
          elevation: 5),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: AppColors.redColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
      ),
      checkboxTheme: CheckboxThemeData(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          fillColor: MaterialStateProperty.all(AppColors.redColor)),
      //inputDecoration Theme
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.whiteColor.withOpacity(0.1),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(color: AppColors.redColor)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hoverColor: AppColors.redColor,
          contentPadding: const EdgeInsets.all(20),
          prefixIconColor: AppColors.whiteColor.withOpacity(0.4),
          suffixIconColor: AppColors.whiteColor.withOpacity(0.4),
          hintStyle: AppStyle.instance.bodyMedium
              .copyWith(color: AppColors.whiteColor.withOpacity(0.4))),
    );
  }
}

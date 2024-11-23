import 'package:flutter/cupertino.dart';
import 'package:real_project_bloc_api_lists/core/res/color.dart';

class AppStyle {

  static AppStyle instance = AppStyle._init();

  AppStyle._init();


  final TextStyle headlineMedium =  const TextStyle(
    color: AppColors.whiteColor,
    fontSize: 27,
    fontWeight: FontWeight.w800,
  );

  final TextStyle subtitle2Style =  const TextStyle(
    color: AppColors.whiteColor,
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );

  final TextStyle h2Bold = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 40,
    fontWeight: FontWeight.w700,
  );

  final TextStyle h4Bold = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 28,
    fontWeight: FontWeight.w700,
  );

  final TextStyle h5Bold = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );

  final TextStyle bodyXLarge = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  final TextStyle bodyMedium = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}

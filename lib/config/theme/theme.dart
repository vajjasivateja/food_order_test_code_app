import 'package:flutter/material.dart';
import 'package:food_order_test_code_app/config/theme/widget_themes/appbar_theme.dart';
import 'package:food_order_test_code_app/config/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:food_order_test_code_app/config/theme/widget_themes/checkbox_theme.dart';
import 'package:food_order_test_code_app/config/theme/widget_themes/chip_theme.dart';
import 'package:food_order_test_code_app/config/theme/widget_themes/elevated_button_theme.dart';
import 'package:food_order_test_code_app/config/theme/widget_themes/outlined_button_theme.dart';
import 'package:food_order_test_code_app/config/theme/widget_themes/text_field_theme.dart';
import 'package:food_order_test_code_app/config/theme/widget_themes/text_theme.dart';

import '../../core/resourse/app_colors.dart';


class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'SFProDisplayBlack',
    disabledColor: AppColors.gray,
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryBlue, // Your primary color
      secondary: AppColors.secondary, // Your secondary color
      background: AppColors.white,
      onPrimary: Colors.white, // Text/icon color when the background is primary
      onSecondary: Colors.black, // Text/icon color when the background is secondary
    ),
    textTheme: AppTextTheme.lightTextTheme,
    chipTheme: AppChipTheme.lightChipTheme,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: ApplicationBarTheme.lightAppBarTheme,
    checkboxTheme: AppCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'SFProDisplayBlack',
    disabledColor: AppColors.gray,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryBlue, // Your primary color
      secondary: AppColors.secondary, // Your secondary color
      background: AppColors.white,
      onPrimary: Colors.white, // Text/icon color when the background is primary
      onSecondary: Colors.black, // Text/icon color when the background is secondary
    ),
    textTheme: AppTextTheme.darkTextTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    scaffoldBackgroundColor: AppColors.black,
    appBarTheme: ApplicationBarTheme.darkAppBarTheme,
    checkboxTheme: AppCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.darkInputDecorationTheme,
  );
}

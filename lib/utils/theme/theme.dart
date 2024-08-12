import 'package:e_commerce/utils/theme/custom_themes/appbar_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/chip_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/text_field_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class MyAppTheme{
  MyAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: MyTextTheme.lightTextTheme,
    chipTheme: MyChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: MyAppBarTheme.lightAppBarTheme,
    checkboxTheme: MyCheckBoxTheme.lightCheckboxTheme,
    elevatedButtonTheme:AppElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: MyTextFormFieldTheme.lightInputDecorationTheme,
  );


  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: MyTextTheme.darkTextTheme,
    chipTheme: MyChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: MyAppBarTheme.darkAppBarTheme,
    checkboxTheme: MyCheckBoxTheme.darkCheckboxTheme,
    elevatedButtonTheme:AppElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: MyTextFormFieldTheme.darkInputDecorationTheme,
  );
}
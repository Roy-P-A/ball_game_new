import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'theme.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
      textSelectionTheme: const TextSelectionThemeData(
        selectionHandleColor: Colors.transparent,
      ),
      fontFamily: 'Gotham Rounded',
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      inputDecorationTheme: const InputDecorationTheme(
        hintStyle: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 17,
            color: placeholderColor),
        labelStyle: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 17,
            color: primaryTextColor),
        contentPadding: EdgeInsets.all(20),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            primary: primaryTextColor,
            textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: primaryButtonTextColor)),
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: appBarColor,
          elevation: 60.0,
          titleTextStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Colors.white)
              .apply(fontFamily: 'Gotham Rounded')),
      textTheme: GetPlatform.isDesktop
          ? const TextTheme(
              headline1: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: primaryColor),
              headline2: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 26,
                  color: primaryTextColor),
              headline3: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: primaryColor),
              headline4: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: primaryColor),
              headline5: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: primaryTextColor),
              headline6: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: primaryTextColor),
              bodyText1: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 17,
                  color: primaryTextColor),
              bodyText2: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                  color: primaryTextColor),
              subtitle2: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: primaryTextColor),
              button: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: primaryButtonTextColor),
            )
          : const TextTheme(
              headline1: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: primaryColor),
              headline2: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 26,
                  color: primaryTextColor),
              headline3: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: primaryColor),
              headline4: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: primaryColor),
              headline5: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: primaryTextColor),
              headline6: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: primaryTextColor),
              bodyText1: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 17,
                  color: primaryTextColor),
              bodyText2: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                  color: primaryTextColor),
              subtitle2: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: primaryTextColor),
              button: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: primaryButtonTextColor),
            ));

  static final ThemeData activityTheme = ThemeData(
      fontFamily: 'Gotham Rounded',
      textTheme: GetPlatform.isDesktop
          ? const TextTheme(
              headline1: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 49,
                  color: activityTextColor),
              headline2: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 49,
                  color: activityTextColor),
              headline3: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 45,
                  color: activityTextColor),
              headline4: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 42,
                  color: activityTextColor),
              headline5: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 38,
                  color: activityTextColor),
              headline6: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 35,
                  color: activityTextColor),
              bodyText1: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 33,
                  color: activityTextColor),
              bodyText2: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 28,
                  color: activityTextColor),
            )
          : const TextTheme(
              headline1: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: activityTextColor),
              headline2: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 28,
                  color: activityTextColor),
              headline3: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 26,
                  color: activityTextColor),
              headline4: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: activityTextColor),
              headline5: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: activityTextColor),
              headline6: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: activityTextColor),
              bodyText1: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 19,
                  color: activityTextColor),
              bodyText2: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  color: activityTextColor),
            ));
}

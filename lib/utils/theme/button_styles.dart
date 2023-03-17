import 'package:flutter/material.dart';


import 'theme.dart';

ElevatedButtonThemeData elevatedButtonThemeData(BuildContext context) =>
    ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom( 
        fixedSize: Size(MediaQuery.of(context).size.width * 2 / 3, 60),
        primary: primaryButtonColor,
        onPrimary: primaryButtonTextColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        //textStyle: Theme.of(context).textTheme.button,
      ),
    );

ElevatedButtonThemeData elevatedButtonThemeDataWithPadding(BuildContext context, double horizontalPadding) =>
    ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom( 
        fixedSize: Size(MediaQuery.of(context).size.width - (2 * horizontalPadding), 60),
        primary: primaryButtonColor,
        onPrimary: primaryButtonTextColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        //textStyle: Theme.of(context).textTheme.button,
      ),
    );

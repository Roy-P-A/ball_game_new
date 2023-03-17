import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/ballgame_screen.dart';
import 'utils/routes.dart';
import 'utils/theme/theme.dart';


void main() {
  runApp(const ToffeeRideApp());
}



class ToffeeRideApp extends StatelessWidget {
  const ToffeeRideApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    

    return Platform.isWindows || Platform.isMacOS
        ? GetMaterialApp(
            builder: (context, child) {
              final MediaQueryData data = MediaQuery.of(context);

              return MediaQuery(
                data: data.copyWith(
                    textScaleFactor:
                        data.textScaleFactor * data.size.height / 700 > 1
                            ? 1
                            : data.textScaleFactor * data.size.height / 700),
                child: child!,
              );
            },
            //title: F.title,
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            themeMode: ThemeMode.light,
            navigatorObservers: [
            
            ],
            getPages: routes(),
          )
        : GetMaterialApp(
            //title: F.title,
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            themeMode: ThemeMode.light,
            navigatorObservers: [
             
            ],
            getPages: routes(),
          );
  }
}


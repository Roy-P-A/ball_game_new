

// final MediaQueryData _data =
//     MediaQuery.of(Get.context!).copyWith(textScaleFactor: 1);

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../features/ballgame.dart';

Widget _wrapWithMediaQuery({required Widget child}) {
  // return MediaQuery(
  //   child: child,
  //   data: _data,
  // );
  return child;
}

List<GetPage> routes() => [
      GetPage(
          name: "/",
          page: () => const BallGameScreen(),
          transition: Transition.cupertino),
     
    ];
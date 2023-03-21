import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/dimensions.dart';
import '../widgets/tr_icon_button.dart';
import 'ballgame_controller.dart';
import 'widgets/ball_game_view.dart';

class BallGameScreen extends StatelessWidget {
  const BallGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BallGameController>(
        init: BallGameController(),
        builder: (controller) {
          return Scaffold(
            body: Stack(
              children: [
                Image(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                  image: const AssetImage('assets/images/background.jpg'),
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    color: Colors.black.withOpacity(0),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                SafeArea(
                  //left: false,
                  right: false,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Row(
                      children: [
                        BallGameView(controller: controller,),
                        _sideMenu(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  Widget _sideMenu() {
    final BallGameController controller = Get.find();

    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedOpacity(
          opacity: 1,
          duration: const Duration(microseconds: 300),
          child: TRIconButton(
            isEnabled: true,
            padding: EdgeInsets.zero,
            icon: Image.asset(
              "assets/images/buttons/go_back.png",
            ),
            iconSize: iconSize,
            onPressed: () {},
          ),
        ),
        const Spacer(),
        AnimatedOpacity(
          opacity: 1,
          duration: const Duration(microseconds: 300),
          child: TRIconButton(
            isEnabled: true,
            padding: EdgeInsets.zero,
            icon: Image.asset(
              "assets/images/buttons/repeat.png",
            ),
            iconSize: iconSize,
            onPressed: () {},
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        AnimatedOpacity(
          opacity: 1,
          duration: const Duration(microseconds: 300),
          child: TRIconButton(
              isEnabled: true,
              padding: EdgeInsets.zero,
              icon: Image.asset(
                "assets/images/buttons/toffee_shot.png",
              ),
              iconSize: iconSize,
              onPressed: () {}),
        ),
        const SizedBox(
          height: 5,
        ),
        AnimatedOpacity(
          opacity: 1,
          duration: const Duration(microseconds: 300),
          child: TRIconButton(
              isEnabled: true,
              padding: EdgeInsets.zero,
              icon: Image.asset(
                "assets/images/buttons/done.png",
              ),
              iconSize: iconSize,
              onPressed: () {
                controller.onTappedDoneButton();
              }),
        ),
        Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            AnimatedOpacity(
              opacity: 1,
              duration: const Duration(microseconds: 300),
              child: TRIconButton(
                  isEnabled: true,
                  padding: EdgeInsets.zero,
                  icon: Image.asset(
                    "assets/images/buttons/skip.png",
                  ),
                  iconSize: iconSize,
                  onPressed: () {}),
            ),
          ],
        )
      ],
    );
  }
}


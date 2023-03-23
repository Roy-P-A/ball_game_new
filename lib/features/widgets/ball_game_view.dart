import 'package:balloon_pop/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';
import '../ballgame.dart';

class BallGameView extends StatelessWidget {
  const BallGameView({
    super.key,
    required this.controller,
  });
  final BallGameController controller;

  @override
  Widget build(BuildContext context) {
    final smallDevices = MediaQuery.of(context).size.width < 550;
    //final largerDevices = MediaQuery.of(context).size.width >= 1100;
    final tab = MediaQuery.of(context).size.width < 1300 &&
        MediaQuery.of(context).size.width >= 800;
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MediaQuery(
                data: const MediaQueryData(textScaleFactor:0.9),
                child: Text(
                  'I have ${controller.totalNumberOfBalls} soccer balls. I need 1/${controller.denominator} of them.How many do I need?',
                  style: smallDevices
                      ? AppTheme.activityTheme.textTheme.headline6
                          ?.copyWith(color: Colors.white)
                      : tab
                          ? AppTheme.activityTheme.textTheme.headline1
                              ?.copyWith(color: Colors.white)
                          : AppTheme.activityTheme.textTheme.headline4
                              ?.copyWith(color: Colors.white),
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: GridView.count(
                crossAxisSpacing: 0,
                //physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 10,
                children: List.generate(
                  controller.totalNumberOfBalls,
                  (index) => oneBallUi(index),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget oneBallUi(int index) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                controller.tapfunction(index);
              },
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  SizedBox(
                    width: constraints.maxWidth / 2,
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: controller.isImageVisibleList1[index]
                          ? const Image(
                              fit: BoxFit.contain,
                              image: AssetImage('assets/images/ball.png'))
                          : const SizedBox(),
                    ),
                  ),
                  SizedBox(
                    width: constraints.maxWidth / 1,
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: controller.isImageVisibleList1[index]
                          ? const Center(
                              child: Text(
                                '',
                              ),
                            )
                          : controller.iconList1[index],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      );
    });
  }
}

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:balloon_pop/mixins/snackbar_mixin.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';

class BallGameController extends GetxController with SnackbarMixin {
  final _totalNumberOfBalls = 40.obs;
  int get totalNumberOfBalls => _totalNumberOfBalls.value;

    final _denominator = 3.obs;
  int get denominator => _denominator.value;

  final _expectedScore = 0.obs;
  int get expectedScore => _expectedScore.value;

  final _actualScore = 0.obs;
  int get actualScore => _actualScore.value;

  List<bool> isImageVisibleList1 = [];

  List<RiveAnimation> iconList1 = const [
    RiveAnimation.asset('assets/rive/ball_click.riv'),
  ].toList().obs;

  bool isSuccess = false;

  AssetsAudioPlayer player1 = AssetsAudioPlayer();

  @override
  void onInit() {
    super.onInit();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

    _expectedScore.value = (totalNumberOfBalls / denominator).floor();

    for (int i = 0; i < totalNumberOfBalls; i++) {
      isImageVisibleList1.add(true);
      iconList1.add(const RiveAnimation.asset('assets/rive/ball_click.riv'));
    }

    player1.open(Audio('assets/audio/Win.mp3'),
        autoStart: false, showNotification: true);
  }

  @override
  void dispose() {
    player1.dispose();
    super.dispose();
  }

  tapfunction(index) async{
    isImageVisibleList1[index] ? player1.play() : null;
    isImageVisibleList1[index] ? countIncrease() : null;
    isImageVisibleList1[index] = false;
    //isSuccess = actualScore == expectedScore;
    //await Future.delayed(const Duration(milliseconds: 2000));
    //onTappedDoneButton();
  
    update();
  }

  countIncrease() {
    _actualScore.value++;
  }

  onTappedDoneButton() {
    if (actualScore == 0) {
      showErrorSnackbar(title: 'Error', message: 'Incomplete game');
      return;
    }

    isSuccess = actualScore == expectedScore;

    if (isSuccess) {
      showSuccessSnackbar(
          title: 'Success', message: 'You got the correct answer');
    } else {
      showErrorSnackbar(title: 'Error', message: 'Incorrect answer');
    }
  }
}

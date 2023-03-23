import 'package:balloon_pop/mixins/snackbar_mixin.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';
import 'package:just_audio/just_audio.dart';

class BallGameController extends GetxController with SnackbarMixin {
  final _totalNumberOfBalls = 40.obs;
  int get totalNumberOfBalls => _totalNumberOfBalls.value;

  final _isEnableDoneButton = false.obs;
  bool get isEnableDoneButton => _isEnableDoneButton.value;

  final _denominator = 5.obs;
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

  late AudioPlayer audioPlayer;

  @override
  void onInit() {
    super.onInit();
    audioPlayer = AudioPlayer();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

    _startFunction();
  }

  _startFunction() {
    _expectedScore.value = (totalNumberOfBalls / denominator).floor();
    for (int i = 0; i < totalNumberOfBalls; i++) {
      isImageVisibleList1.add(true);
      iconList1.add(const RiveAnimation.asset('assets/rive/ball_click.riv'));
    }
  }

  Future<void> playSoundWin() async {
    await audioPlayer.setAsset('assets/audio/Win.mp3');
    await audioPlayer.play();
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  tapfunction(index) async {
    isImageVisibleList1[index] ? playSoundWin() : null;
    isImageVisibleList1[index] ? countIncrease() : null;
    isImageVisibleList1[index] = false;

    isSuccess = actualScore == expectedScore;

    if (isSuccess) {
      showSuccessSnackbar(
          title: 'Success', message: 'You got the correct answer');
      _isEnableDoneButton(true);
    } else if (actualScore > expectedScore) {
      showErrorSnackbar(title: 'Error', message: 'Incorrect answer');
      _isEnableDoneButton(false);
    }

    update();
  }

  countIncrease() {
    _actualScore.value++;
  }

  reloadfunction() {
    isImageVisibleList1.clear();
    iconList1.clear();
    _actualScore.value = 0;
    _startFunction();
    update();
  }

  onTappedDoneButton() {}
}

import 'package:flutter/material.dart';

class Countdown extends AnimatedWidget {
  Countdown({required this.animation}) : super(listenable: animation);
  Animation<int> animation;

  @override
  build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);

    String timerText =
        '${clockTimer.inMinutes.remainder(60).toString()}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';

    return Text(
      timerText == '0:00' ? 'Code Expired' : timerText,
      style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';

final ValueNotifier<String> notifierTime = ValueNotifier("0:00");

Timer? timerInstance;

startTimer() {
  int durationInSeconds = 60;
  timerInstance = Timer.periodic(const Duration(seconds: 1), (timer) {
    durationInSeconds = durationInSeconds - 1;
    String timeInMinutes =
        (durationInSeconds / 60).toInt().toString().length < 2
            ? "0" + (durationInSeconds / 60).toInt().toString()
            : (durationInSeconds / 60).toInt().toString();
    String timeInSeconds =
        (durationInSeconds % 60).toInt().toString().length < 2
            ? '0' + (durationInSeconds % 60).toInt().toString()
            : (durationInSeconds % 60).toInt().toString();

    notifierTime.value = timeInMinutes + ":" + timeInSeconds;
    print("count down timer");
    if (durationInSeconds == 0) {
      timer.cancel();
    }
  });
}

stopTimer() {
  if (timerInstance == null) {
  } else {
    notifierTime.value = "0:00";
    timerInstance!.cancel();
  }
}

import 'dart:async';

import 'package:desktop_quest/feature/timer/infrastructure/timesheet.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimerCubit extends Cubit<CurrentTimeSheet> {
  TimerCubit() : super(const CurrentTimeSheet());

  void startTimer() {
    Timer? timer = state.timer;
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer1) {
        final currentTimeSheets = state;
        final newTimeSheets = currentTimeSheets.copyWith(
          isPlaying: true,
          duration: Duration(
            seconds: currentTimeSheets.duration.inSeconds + 1,
          ),
          timer: timer,
        );

        emit(newTimeSheets);
      },
    );
  }

  void resetTimer() {
    state.timer?.cancel();
    emit(const CurrentTimeSheet());
  }

  void pauseTimer() {
    state.timer?.cancel();
    emit(state.copyWith(isPlaying: false));
  }
}

import 'dart:async';

import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timesheet.freezed.dart';

@freezed
class CurrentTimeSheet with _$CurrentTimeSheet {
  const factory CurrentTimeSheet({
    Timer? timer,
    @Default(Duration(seconds: 0)) Duration duration,
    @Default([]) List<TimeSheet> timeSheet,
  }) = _CurrentTimeSheet;
}

@freezed
class TimeSheet with _$TimeSheet {
  const factory TimeSheet({
    required DateTime dateTime,
    Uint8List? image,
    Uint8List? headShotImage,
  }) = _TimeSheet;
}

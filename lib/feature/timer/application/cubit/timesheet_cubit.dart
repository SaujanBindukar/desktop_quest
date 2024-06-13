import 'package:desktop_quest/feature/timer/infrastructure/timesheet.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimesheetCubit extends Cubit<List<TimeSheet>> {
  TimesheetCubit() : super([]);

  void addTimeSheet({required TimeSheet timeSheet}) {
    final timeSheetList = [
      timeSheet,
      ...state,
    ];
    emit(timeSheetList);
  }
}

import 'package:desktop_quest/feature/timer/application/cubit/timesheet_cubit.dart';
import 'package:desktop_quest/feature/timer/infrastructure/timesheet.dart';
import 'package:desktop_quest/feature/timer/presentation/widgets/recorded_timesheet_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecordedData extends StatelessWidget {
  const RecordedData({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimesheetCubit, List<TimeSheet>>(
      bloc: context.read<TimesheetCubit>(),
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                'Your Data',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const Divider(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: state.map((e) {
                    return RecordedTimeSheetTile(
                      timeSheet: e,
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

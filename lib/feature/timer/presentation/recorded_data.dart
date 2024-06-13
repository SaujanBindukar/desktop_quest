import 'package:desktop_quest/feature/timer/application/cubit/timesheet_cubit.dart';
import 'package:desktop_quest/feature/timer/infrastructure/timesheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: state.map((e) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        child: Row(
                          children: [
                            Image.memory(
                              e.headShotImage!,
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'Recorded in:\n${DateFormat.yMd().add_jms().format(e.dateTime)}',
                            ),
                            const Spacer(),
                            Image.memory(
                              e.image!,
                              height: 50,
                              width: 50,
                            ),
                          ],
                        ),
                      ),
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

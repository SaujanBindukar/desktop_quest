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

class RecordedTimeSheetTile extends StatelessWidget {
  const RecordedTimeSheetTile({super.key, required this.timeSheet});
  final TimeSheet timeSheet;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Row(
            children: [
              Image.memory(
                timeSheet.headShotImage!,
                height: 80,
                width: 80,
              ),
              const SizedBox(width: 10),
              Text(
                'Recorded in:\n${DateFormat.yMd().add_jms().format(timeSheet.dateTime)}',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 4,
                      spreadRadius: 4,
                      offset: const Offset(2, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Image.memory(
                  timeSheet.image!,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

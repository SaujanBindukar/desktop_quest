import 'dart:developer';
import 'dart:io';

import 'package:desktop_quest/feature/timer/application/cubit/timer_cubit.dart';
import 'package:desktop_quest/feature/timer/application/cubit/timesheet_cubit.dart';
import 'package:desktop_quest/feature/timer/application/screenshot_provider.dart';
import 'package:desktop_quest/feature/timer/infrastructure/timesheet.dart';
import 'package:desktop_quest/feature/timer/presentation/recorded_data.dart';
import 'package:desktop_quest/feature/timer/presentation/widgets/headshot.dart';
import 'package:desktop_quest/feature/timer/presentation/widgets/timer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screenshot/screenshot.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: BlocConsumer<TimerCubit, CurrentTimeSheet>(
        bloc: context.read<TimerCubit>(),
        listener: (context, state) async {
          if (state.duration.inSeconds > 0 &&
              state.duration.inSeconds % 10 == 0) {
            final currentDate = DateTime.now();
            //take whole screen screenshots
            final capturedData = await ScreenshotProvider.captureScreenshot();

            //take headshot screenshot
            final headShotImage =
                await screenshotController.captureFromLongWidget(
              const HeadShot(),
              delay: const Duration(milliseconds: 1500),
              pixelRatio: MediaQuery.of(context).devicePixelRatio,
              context: context,
            );

            context.read<TimesheetCubit>().addTimeSheet(
                  timeSheet: TimeSheet(
                    dateTime: currentDate,
                    image: capturedData,
                    headShotImage: headShotImage,
                  ),
                );
          }
        },
        builder: (context, state) {
          return const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TimerWidget(),
              Expanded(
                flex: 1,
                child: RecordedData(),
              ),
            ],
          );
        },
      ),
    );
  }
}

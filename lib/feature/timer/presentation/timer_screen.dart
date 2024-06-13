import 'package:camera_macos/camera_macos.dart';
import 'package:desktop_quest/core/extensions/duration_extension.dart';
import 'package:desktop_quest/feature/timer/application/cubit/timer_cubit.dart';
import 'package:desktop_quest/feature/timer/application/cubit/timesheet_cubit.dart';
import 'package:desktop_quest/feature/timer/infrastructure/timesheet.dart';
import 'package:desktop_quest/feature/timer/presentation/recorded_data.dart';
import 'package:flutter/material.dart';
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
      body: Screenshot(
        controller: screenshotController,
        child: BlocConsumer<TimerCubit, CurrentTimeSheet>(
          bloc: context.read<TimerCubit>(),
          listener: (context, state) async {
            if (state.duration.inSeconds > 0 &&
                state.duration.inSeconds % 10 == 0) {
              final currentDate = DateTime.now();
              final imageValue = await screenshotController.capture();
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
                      image: imageValue,
                      headShotImage: headShotImage,
                    ),
                  );
            }
          },
          builder: (context, state) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Text(
                        state.duration.getDuration(),
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              context.read<TimerCubit>().startTimer();
                            },
                            icon: const Icon(
                              Icons.play_arrow,
                              size: 40,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              context.read<TimerCubit>().resetTimer();
                            },
                            icon: const Icon(
                              Icons.stop,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const HeadShot(),
                    ],
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: RecordedData(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class HeadShot extends StatefulWidget {
  const HeadShot({super.key});

  @override
  State<HeadShot> createState() => _HeadShotState();
}

class _HeadShotState extends State<HeadShot> {
  final GlobalKey cameraKey = GlobalKey();
  late CameraMacOSController macOSController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: CameraMacOSView(
          key: cameraKey,
          fit: BoxFit.fill,
          enableAudio: false,
          cameraMode: CameraMacOSMode.photo,
          toggleTorch: Torch.on,
          onCameraInizialized: (CameraMacOSController controller) {
            setState(() {
              macOSController = controller;
            });
          },
        ),
      ),
    );
  }
}

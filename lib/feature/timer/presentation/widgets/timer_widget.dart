import 'package:desktop_quest/core/extensions/duration_extension.dart';
import 'package:desktop_quest/feature/timer/application/cubit/timer_cubit.dart';
import 'package:desktop_quest/feature/timer/presentation/widgets/headshot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TimerCubit>().state;
    return Expanded(
      flex: 1,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
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
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your data is recorded every 10 sec',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: 10),
            Text(
              state.duration.getDuration(),
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    if (state.isPlaying) {
                      context.read<TimerCubit>().pauseTimer();
                    } else {
                      context.read<TimerCubit>().startTimer();
                    }
                  },
                  icon: Icon(
                    state.isPlaying ? Icons.pause : Icons.play_arrow,
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
    );
  }
}

import 'package:camera_macos/camera_macos.dart';
import 'package:flutter/material.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  final GlobalKey cameraKey = GlobalKey();
  late CameraMacOSController macOSController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Start Timer'),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              width: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: CameraMacOSView(
                  key: cameraKey,
                  fit: BoxFit.fill,
                  cameraMode: CameraMacOSMode.video,
                  onCameraInizialized: (CameraMacOSController controller) {
                    setState(() {
                      macOSController = controller;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

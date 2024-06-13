import 'package:camera_macos/camera_macos.dart';
import 'package:flutter/material.dart';

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
      height: 150,
      width: 150,
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

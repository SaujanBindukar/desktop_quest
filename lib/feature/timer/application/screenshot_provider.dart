import 'dart:developer';

import 'package:flutter/services.dart';

class ScreenshotProvider {
  //private constructor
  ScreenshotProvider._();

  static const platform = MethodChannel('com.example.desktop_quest/screenshot');

  static Future<Uint8List?> captureScreenshot() async {
    try {
      final imageData = await platform.invokeMethod('captureScreenshot');
      return imageData;
    } on PlatformException catch (e) {
      log("Failed to capture screenshot: '${e.message}'.");
      return null;
    }
  }
}

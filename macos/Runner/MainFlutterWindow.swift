import Cocoa
import FlutterMacOS
import CoreGraphics

class MainFlutterWindow: NSWindow {
  override func awakeFromNib() {
    let flutterViewController = FlutterViewController()
    let windowFrame = self.frame
    self.contentViewController = flutterViewController
    self.setFrame(windowFrame, display: true)

    RegisterGeneratedPlugins(registry: flutterViewController)

    super.awakeFromNib()
    
    let screenshotChannel = FlutterMethodChannel(
      name: "com.example.desktop_quest/screenshot",
      binaryMessenger: flutterViewController.engine.binaryMessenger)
    screenshotChannel.setMethodCallHandler { [weak self] (call, result) in
      guard let self = self else { return }
      switch call.method {
      case "captureScreenshot":
        if let screenshot = self.captureScreenshot() {
          if let imageData = screenshot.tiffRepresentation {
            result(FlutterStandardTypedData(bytes: imageData))
          } else {
            result(FlutterError(code: "UNAVAILABLE",
                                message: "Failed to convert screenshot to data",
                                details: nil))
          }
        } else {
          result(FlutterError(code: "UNAVAILABLE",
                              message: "Failed to capture screenshot",
                              details: nil))
        }
      default:
        result(FlutterMethodNotImplemented)
      }
    }
  }

  private func captureScreenshot() -> NSImage? {
    let displayID = CGMainDisplayID()
    guard let imageRef = CGDisplayCreateImage(displayID) else {
      return nil
    }
    let bitmapRep = NSBitmapImageRep(cgImage: imageRef)
    let image = NSImage(size: bitmapRep.size)
    image.addRepresentation(bitmapRep)
    return image
  }
}

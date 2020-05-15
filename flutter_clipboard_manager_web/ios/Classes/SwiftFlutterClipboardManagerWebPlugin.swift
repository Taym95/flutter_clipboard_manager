import Flutter
import UIKit

public class SwiftFlutterClipboardManagerWebPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_clipboard_manager_web", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterClipboardManagerWebPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}

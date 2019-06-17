import 'dart:async';

import 'package:flutter/services.dart';

class FlutterClipboardManager {
  static const MethodChannel _channel =
      const MethodChannel('flutter_clipboard_manager');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

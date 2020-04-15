import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_clipboard_manager_platform_interface/flutter_clipboard_manager_platform_interface.dart';

const MethodChannel _channel = MethodChannel('flutter_clipboard_manager');

/// An implementation of [UrlLauncherPlatform] that uses method channels.
class MethodChannelFlutterClipboardManager extends FlutterClipboardManagerPlatform {
  Future<bool> copyToClipBoard(String text) async {
    return await _channel.invokeMethod(
      'copyToClipBoard',
      <String, String>{'text': text},
    );
  }

  Future<String> copyFromClipBoard() => _channel.invokeMethod('copyFromClipBoard');
}

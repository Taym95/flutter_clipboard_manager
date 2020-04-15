import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_clipboard_manager_platform_interface/flutter_clipboard_manager_platform_interface.dart';

class FlutterClipboardManager {
  /// Copies [text] to the clipboard and returns whether
  /// the operation was successful or not.
  static Future<bool> copyToClipBoard(String text) => FlutterClipboardManagerPlatform.instance.copyToClipBoard(text);

  /// Returns the current clipboard contents.
  static Future<String> copyFromClipBoard() => FlutterClipboardManagerPlatform.instance.copyFromClipBoard();
}

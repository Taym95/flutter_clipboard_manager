import 'dart:html' as html;

import 'package:flutter_clipboard_manager_platform_interface/flutter_clipboard_manager_platform_interface.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';


/// The web implementation of [UrlLauncherPlatform].
///
/// This class implements the `package:url_launcher` functionality for the web.
class FlutterClipboardManagerPlugin extends FlutterClipboardManagerPlatform {
  /// Registers this class as the default instance of [UrlLauncherPlatform].
  static void registerWith(Registrar registrar) {
    FlutterClipboardManagerPlatform.instance = FlutterClipboardManagerPlugin();
  }

  @override
  Future<bool> copyToClipBoard(String text) async {
    try {
      await html.window.navigator.clipboard.writeText(text);
      return true;
    } catch (_) {
      return false;
    }
  }

  @override
  Future<String> copyFromClipBoard() {
    return html.window.navigator.clipboard.readText();
  }
}

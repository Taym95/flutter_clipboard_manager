import 'dart:async';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'package:flutter_clipboard_manager_platform_interface/method_channel_flutter_clipboard_manager.dart';

/// The interface that implementations of `flutter_clipboard_manager` must implement.
abstract class FlutterClipboardManagerPlatform extends PlatformInterface {
  /// Constructs a [FlutterClipboardManagerPlatform].
  FlutterClipboardManagerPlatform() : super(token: _token);

  static final _token = Object();

  static FlutterClipboardManagerPlatform _instance = MethodChannelFlutterClipboardManager();

  /// The default instance of [FlutterClipboardManagerPlatform] to use.
  static FlutterClipboardManagerPlatform get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [FlutterClipboardManagerPlatform] when they register themselves.
  static set instance(FlutterClipboardManagerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool> copyToClipBoard(String text) async {
    throw UnimplementedError();
  }

  Future<String> copyFromClipBoard() async {
    throw UnimplementedError();
  }
}

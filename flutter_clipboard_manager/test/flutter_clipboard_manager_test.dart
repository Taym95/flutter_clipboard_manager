import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_clipboard_manager/flutter_clipboard_manager.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_clipboard_manager');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      // todo: add tests
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });
}

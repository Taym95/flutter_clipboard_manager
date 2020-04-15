# flutter_clipboard_manager [![](https://img.shields.io/pub/v/flutter_clipboard_manager.svg)](https://pub.dev/packages/flutter_clipboard_manager)

![demo](https://user-images.githubusercontent.com/14943106/59601797-62cd5a80-9105-11e9-8262-5a9aa406f772.gif)

## Installation

Add `flutter_clipboard_manager` to your `pubspec.yaml` file.

## Usage

```dart
import 'package:flutter_clipboard_manager/flutter_clipboard_manager.dart';

// Write to clipboard
FlutterClipboardManager.copyToClipBoard("Atchou chwiya!").then((result) {
  if(result) {
    // Write to clipboard success
  }
});

// Read from clipboard
FlutterClipboardManager.copyFromClipBoard().then((result) {
  // Clipboard data
  print(result);
});
```

# flutter_clipboard_manager

![ezgif-1-e24ee065ce48](https://user-images.githubusercontent.com/14943106/59601797-62cd5a80-9105-11e9-8262-5a9aa406f772.gif)

### Installation

Add `flutter_clipboard_manager` to your `pubspec.yamlfile`.

### Usage

```dart
import 'package:flutter_clipboard_manager/flutter_clipboard_manager.dart';

// Write to clipboard 
FlutterClipboardManager.copyToClipBoard("Atchou chwiya!").then((result) {
    if(result){
        // Write to clipboard success
    }
});

// Read from clipboard
FlutterClipboardManager.copyFromClipBoard().then((result) {
    // Clipboard data
    print(result);
});
```

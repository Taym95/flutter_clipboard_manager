#import "FlutterClipboardManagerPlugin.h"
#import <flutter_clipboard_manager/flutter_clipboard_manager-Swift.h>

@implementation FlutterClipboardManagerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterClipboardManagerPlugin registerWithRegistrar:registrar];
}
@end

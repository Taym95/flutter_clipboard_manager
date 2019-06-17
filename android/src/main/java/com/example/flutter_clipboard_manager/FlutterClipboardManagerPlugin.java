package com.example.flutter_clipboard_manager;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** FlutterClipboardManagerPlugin */
public class FlutterClipboardManagerPlugin implements MethodCallHandler {
  private Registrar registrar;

  private ClipboardManagerPlugin(Registrar registrar){
    this.registrar=registrar;
  }

  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "flutter_clipboard_manager");
    channel.setMethodCallHandler(new FlutterClipboardManagerPlugin());
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    Context context;
    if (registrar.activity() != null) {
      context = (Context) registrar.activity();
    } else {
      context = registrar.context();
    }
    ClipboardManager clipboard = (ClipboardManager) context.getSystemService(Context.CLIPBOARD_SERVICE);

    if (call.method.equals("copyToClipBoard")) {
      String thingToCopy = call.argument("text");
      ClipData clip = ClipData.newPlainText("", thingToCopy);
      clipboard.setPrimaryClip(clip);
      result.success(true);
    } else if (call.method.equals("copyFromClipBoard")) {
      android.content.ClipData clipData = clipboard.getPrimaryClip();

      if (clipData == null) {
        result.success("");
      }

      if (clipData.getItemCount() >= 1) {
        ClipData.Item clipDataItem = clipboard.getPrimaryClip().getItemAt(0);
        String data = "" + clipDataItem.getText();
        result.success(data);
      } else {
        result.success("");
      }
    } else {
      result.notImplemented();
    }
  }
}

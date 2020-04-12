import 'package:flutter/material.dart';
import 'package:flutter_clipboard_manager/flutter_clipboard_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter clipboard manager example app'),
        ),
        body: Builder(
          builder: (context) {
            return Center(
              child: Column(
                children: <Widget>[
                  Text('Your coupon is: Atchou chwiya!'),
                  RaisedButton(
                    child: Text('Copy to Clipboard'),
                    onPressed: () {
                      FlutterClipboardManager.copyToClipBoard("Atchou chwiya!")
                          .then((result) {
                        final snackBar = SnackBar(
                          content: Text('Copied to Clipboard'),
                          action: SnackBarAction(
                            label: 'Okey',
                            onPressed: () {},
                          ),
                        );
                        Scaffold.of(context).showSnackBar(snackBar);
                      });
                    },
                  ),
                  RaisedButton(
                    child: Text('Copy from Clipboard'),
                    onPressed: () {
                      FlutterClipboardManager.copyFromClipBoard()
                          .then((result) {
                        final snackBar = SnackBar(
                          content: Text('Clipboard data: $result'),
                          action: SnackBarAction(
                            label: 'Okey',
                            onPressed: () {},
                          ),
                        );
                        Scaffold.of(context).showSnackBar(snackBar);
                      });
                    },
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

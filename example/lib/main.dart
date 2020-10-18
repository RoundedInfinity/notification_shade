import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:notification_shade/notification_shade.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('Open Shade'),
            onPressed: () async {
              try {
                NotificationShade.openNotificationShade;

                await Future.delayed(Duration(seconds: 1));
                NotificationShade.openNotificationShade;
                await Future.delayed(Duration(seconds: 1));
                NotificationShade.closeNotificationShade;
              } on PlatformException {
                print('Could not open shade');
              }
            },
          ),
        ),
      ),
    );
  }
}

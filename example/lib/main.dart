import 'package:flutter/material.dart';
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
          title: const Text('Notifiaction Shade'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('Do the notification shade thing'),
            onPressed: () async {
              // Open the notification shade.
              NotificationShade.openNotificationShade;
              // Wait 2 seconds.
              await Future.delayed(Duration(seconds: 2));
              // And close it again.
              NotificationShade.closeNotificationShade;
            },
          ),
        ),
      ),
    );
  }
}

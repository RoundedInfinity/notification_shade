import 'package:flutter/services.dart';



///Used to open and close the notification shade.
///
///__Example__ 
///
///```
///// Open the notification shade.
///NotificationShade.openNotificationShade;
///// Wait 2 seconds.
///await Future.delayed(Duration(seconds: 2));
///// And close it again.
///NotificationShade.closeNotificationShade;
///```
class NotificationShade {
  static const MethodChannel _channel =
      const MethodChannel('notification_shade');

  ///Opens the notification shade
  ///
  ///Make sure to include `<uses-permission android:name="android.permission.EXPAND_STATUS_BAR" />` in your _manifest.xml_.
  static void get openNotificationShade async {
    try {
      await _channel.invokeMethod('openNotificationShade');
    } on PlatformException {
      print('Could not open notification shade');
    }
  }
  ///Closes the notification shade
  ///
  ///Make sure to include `<uses-permission android:name="android.permission.EXPAND_STATUS_BAR" />` in your _manifest.xml_.
  static void get closeNotificationShade async {
    try {
      await _channel.invokeMethod('closeNotificationShade');
    } on PlatformException {
      print('Could not close notification shade');
    }
  }
}

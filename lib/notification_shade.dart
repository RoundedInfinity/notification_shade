import 'package:flutter/services.dart';

class NotificationShade {
  static const MethodChannel _channel =
      const MethodChannel('notification_shade');

  static void get openNotificationShade async {
    try {
      await _channel.invokeMethod('openNotificationShade');
    } on PlatformException {
      print('Could not open notification shade');
    }
  }

  static void get closeNotificationShade async {
    try {
      await _channel.invokeMethod('closeNotificationShade');
    } on PlatformException {
      print('Could not close notification shade');
    }
  }
}

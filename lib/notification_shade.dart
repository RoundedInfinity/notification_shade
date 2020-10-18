import 'dart:async';

import 'package:flutter/services.dart';

class NotificationShade {
  static const MethodChannel _channel =
      const MethodChannel('notification_shade');

  static Future<String> get platformVersion async {
    final String result = await _channel.invokeMethod('getPlatformVersion');
    return result;
  }

  static Future<String> get openNotificationShade async {
    final String result = await _channel.invokeMethod('openNotificationShade');
    return result;
  }

  static Future<String> get closeNotificationShade async {
    final String result = await _channel.invokeMethod('closeNotificationShade');
    return result;
  }
}

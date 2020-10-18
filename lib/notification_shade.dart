
import 'dart:async';

import 'package:flutter/services.dart';

class NotificationShade {
  static const MethodChannel _channel =
      const MethodChannel('notification_shade');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

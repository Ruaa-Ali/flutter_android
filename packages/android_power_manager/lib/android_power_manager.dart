import 'dart:async';

import 'package:flutter/services.dart';

class AndroidPowerManager {
  static const MethodChannel _channel =
      const MethodChannel('android_power_manager');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

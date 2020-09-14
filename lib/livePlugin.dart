
import 'dart:async';

import 'package:flutter/services.dart';

class LivePlugin {
  static const MethodChannel _channel =
      const MethodChannel('livePlugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

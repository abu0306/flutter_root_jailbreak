import 'dart:async';

import 'package:flutter/services.dart';

class FlutterRootJailbreak {
  static const MethodChannel _channel = MethodChannel('flutter_root_jailbreak');

  // Android Root checks
  static Future<bool> get isRooted async {
    final bool isRooted = await _channel.invokeMethod('isRooted');
    return isRooted;
  }

  // iOS JailBroken checks
  static Future<bool> get isJailBroken async {
    final bool isJailBroken = await _channel.invokeMethod('isJailBroken');
    return isJailBroken;
  }
}

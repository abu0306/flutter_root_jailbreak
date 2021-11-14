import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_root_jailbreak/flutter_root_jailbreak.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_root_jailbreak');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('isJailBroken', () async {
    expect(await FlutterRootJailbreak.isJailBroken, '42');
  });
}

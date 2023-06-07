import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_root_jailbreak/flutter_root_jailbreak.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_root_jailbreak');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMethodCallHandler((call) async => '42');
  });

  tearDown(() {
    channel.setMethodCallHandler((call) async => null);
  });

  test('isJailBroken', () async {
    expect(await FlutterRootJailbreak.isJailBroken, '42');
  });
}

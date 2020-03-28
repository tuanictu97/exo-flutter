import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:exoflutter/exoflutter.dart';

void main() {
  const MethodChannel channel = MethodChannel('exoflutter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Exoflutter.platformVersion, '42');
  });
}

import 'package:flutter/services.dart';
import 'package:jeff_practice/shared_preferences/shared_preferences_1.dart';
import 'package:test/test.dart';

void main() {
  MethodChannel _channel;

  setUpAll(() {
    final _channel = MethodChannel('plugins.flutter.io/shared_preferences');
    _channel.setMockMethodCallHandler(
      (methodCall) async => methodCall.method == 'getAll' ? {} : null,
    );
  });

  tearDownAll(() {
    _channel.setMockMethodCallHandler(null);
    _channel = null;
  });

  test('', () async {
    var account = await UserDefaults.instance.account;
    print(account);

    await UserDefaults.instance.setAccount('test123');
    account = await UserDefaults.instance.account;
    print(account);

    await UserDefaults.instance.setAccount(null);
    account = await UserDefaults.instance.account;
    print(account);
  });
}

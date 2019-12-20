import 'package:shared_preferences/shared_preferences.dart';

class UserDefaults {
  UserDefaults._internal();

  static final _singleton = UserDefaults._internal();

  static UserDefaults get instance => _singleton;

  factory UserDefaults() => _singleton;

  static const String _KEY_ACCOUNT = 'KEY_ACCOUNT';

  Future<bool> setAccount(String account) async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.setString(_KEY_ACCOUNT, account);
  }

  Future<String> get account async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getString(_KEY_ACCOUNT);
  }
}

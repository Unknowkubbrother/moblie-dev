import 'package:shared_preferences/shared_preferences.dart';

class AuthStorage {
  static const _token = 'token';

  Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_token, token);
  }

  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_token);
  }

  Future<void> clearToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_token);
  }

  Future<bool> isLooggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(_token);
  }
}

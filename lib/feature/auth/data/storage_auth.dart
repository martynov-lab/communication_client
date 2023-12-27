import 'package:shared_preferences/shared_preferences.dart';

class StorageAuth {
  static SharedPreferences? _prefsInstance;
  static Future<SharedPreferences> get _instance async =>
      _prefsInstance ??= await SharedPreferences.getInstance();

  // call this method from iniState() function of mainApp().
  static Future<SharedPreferences?> init() async {
    _prefsInstance = await _instance;
    return _prefsInstance;
  }

  static String? getString(String key) {
    return _prefsInstance?.getString(key);
  }

  static bool getBool(String key) {
    return _prefsInstance?.getBool(key) ?? false;
  }

  static int getInt(String key) {
    return _prefsInstance?.getInt(key) ?? 0;
  }

  static Future<void> setString(String key, String value) async {
    await _prefsInstance?.setString(key, value);
  }

  static Future<void> setBool(String key, bool value) async {
    await _prefsInstance?.setBool(key, value);
  }

  static Future<void> setInt(String key, int value) async {
    await _prefsInstance?.setInt(key, value);
  }

  static Future<void> deleteByKey(String key) async {
    await _prefsInstance?.remove(key);
  }

  static Future<void> deleteAll() async {
    await _prefsInstance?.clear();
  }
}

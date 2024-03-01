import 'package:shared_preferences/shared_preferences.dart';

class StorageHelper {
  static saveData(String key, dynamic value) async {
    final prefs = await SharedPreferences.getInstance();
    if (value is int) {
      prefs.setInt(key, value);
    } else if (value is String) {
      prefs.setString(key, value);
    } else if (value is bool) {
      prefs.setBool(key, value);
    } else {
      prefs.setStringList(key, value);
    }
  }

  static Future<dynamic> readData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    dynamic result = prefs.get(key);
    return result;
  }

  static Future<dynamic> readDataList(String key) async {
    final prefs = await SharedPreferences.getInstance();
    dynamic result = prefs.getStringList(key);
    return result;
  }

  static Future<bool> removeData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.remove(key);
  }

  static Future<bool> clearData() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.clear();
  }
}

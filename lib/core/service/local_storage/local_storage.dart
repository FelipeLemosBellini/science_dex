import 'package:science_dex/core/service/local_storage/interface/local_storage_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage extends ILocalStorage {
  static Future<SharedPreferences> _sharedPreferences() async => SharedPreferences.getInstance();

  @override
  Future delete(String key) async {
    var shared = await _sharedPreferences();
    shared.remove(key);
  }

  @override
  Future get(String key) async {
    var shared = await _sharedPreferences();
    return shared.get(key) ?? "";
  }

  @override
  Future put(String key, String value) async {
    var shared = await _sharedPreferences();
    shared.setString(key, value);
  }

  @override
  Future<void> reload() async {
    var shared = await _sharedPreferences();
    shared.reload();
  }
}

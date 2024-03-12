abstract class ILocalStorage {
  Future delete(String key);

  Future get(String key);

  Future put(String key, String value);

  Future<void> reload();
}

typedef StringMap = Map<String, String>;

abstract class CredentialsStorage {
  Future<StringMap?> read();
  Future<void> save(StringMap credentials);
  Future<void> clear();
}

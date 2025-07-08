import 'package:injectable/injectable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

@module
abstract class SecureStorageModule {
  @singleton
  FlutterSecureStorage createSecureStorage() => FlutterSecureStorage();
}

@singleton
class SecureStorageUtil {
  SecureStorageUtil(this._flutterSecureStorage);
  final FlutterSecureStorage _flutterSecureStorage;

  Future<void> writeBool({required String key, required bool value}) async {
    await _flutterSecureStorage.write(key: key, value: value.toString());
  }

  Future<bool?> readBool(String key) async {
    final String? value = await _flutterSecureStorage.read(key: key);
    return value != null ? value.toLowerCase() == 'true' : null;
  }

  Future<void> write({required String key, required String value}) async {
    await _flutterSecureStorage.write(key: key, value: value);
  }

  Future<String?> read(String key) async {
    return await _flutterSecureStorage.read(key: key);
  }

  Future<bool> containsKey(String key) async {
    return await _flutterSecureStorage.containsKey(key: key);
  }

  Future<void> delete(String key) async {
    await _flutterSecureStorage.delete(key: key);
  }

  Future<Map<String, String>> readAll() async {
    return await _flutterSecureStorage.readAll();
  }

  Future<void> deleteAll() async {
    await _flutterSecureStorage.deleteAll();
  }
}

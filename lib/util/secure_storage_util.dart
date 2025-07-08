import 'package:injectable/injectable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

@singleton
class SecureStorageUtil {
  SecureStorageUtil();
  final FlutterSecureStorage flutterSecureStorage = FlutterSecureStorage();

  Future<void> writeBool({required String key, required bool value}) async {
    await flutterSecureStorage.write(key: key, value: value.toString());
  }

  Future<bool?> readBool(String key) async {
    final String? value = await flutterSecureStorage.read(key: key);
    return value != null ? value.toLowerCase() == 'true' : null;
  }

  Future<void> write({required String key, required String value}) async {
    await flutterSecureStorage.write(key: key, value: value);
  }

  Future<String?> read(String key) async {
    return await flutterSecureStorage.read(key: key);
  }

  Future<bool> containsKey(String key) async {
    return await flutterSecureStorage.containsKey(key: key);
  }

  Future<void> delete(String key) async {
    await flutterSecureStorage.delete(key: key);
  }

  Future<Map<String, String>> readAll() async {
    return await flutterSecureStorage.readAll();
  }

  Future<void> deleteAll() async {
    await flutterSecureStorage.deleteAll();
  }
}

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageService {
  late FlutterSecureStorage storage;

  StorageService({FlutterSecureStorage? storage}) {
    this.storage = storage ?? FlutterSecureStorage();
  }

  Future<String?> read(String key) async {
    try {
      return await storage.read(key: key);
    } catch (e) {
      print(e);
    }
  }

  Future<void> write({required String key, required String data}) async {
    try {
      await storage.write(key: key, value: data);
    } catch (e) {
      print(e);
    }
  }
}

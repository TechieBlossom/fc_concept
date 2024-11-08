import 'dart:convert';

import 'package:cached_annotation/cached_annotation.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class CachingPersistentStorage extends CachedStorage {
  CachingPersistentStorage._();

  static const _cacheBox = 'cacheBox';

  static Future<CachingPersistentStorage> create() async {
    final dir = await getApplicationCacheDirectory();

    Hive.init('${dir.path}/caching');

    await Hive.openBox<String>(_cacheBox);

    return CachingPersistentStorage._();
  }

  @override
  Future<void> write(String key, Map<String, dynamic> data) async {
    final encoded = jsonEncode(data);

    final box = Hive.box<String>(_cacheBox);

    return box.put(key, encoded);
  }

  @override
  Future<Map<String, dynamic>> read(String key) async {
    final box = Hive.box<String>(_cacheBox);
    final result = box.get(key) ?? '{}';

    final decoded = jsonDecode(result);

    return decoded as Map<String, dynamic>;
  }

  @override
  Future<void> delete(String key) async {
    final box = Hive.box<String>(_cacheBox);
    return box.delete(key);
  }

  @override
  Future<void> deleteAll() async {
    final box = Hive.box<String>(_cacheBox);
    return box.deleteFromDisk();
  }
}

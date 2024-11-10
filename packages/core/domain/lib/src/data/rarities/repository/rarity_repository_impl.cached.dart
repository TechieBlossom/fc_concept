// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'rarity_repository_impl.dart';

// **************************************************************************
// CachedGenerator
// **************************************************************************

abstract class _$RarityRepositoryImpl {}

class _RarityRepositoryImpl
    with RarityRepositoryImpl
    implements _$RarityRepositoryImpl {
  _RarityRepositoryImpl() {
    _init();
  }

  Future<void> _init() async {
    try {
      final cachedMap =
          await PersistentStorageHolder.read('__getRaritiesCached');

      cachedMap.forEach((_, value) {
        if (value is! List<dynamic>) throw TypeError();
      });

      __getRaritiesCached = cachedMap;
    } catch (e) {
      __getRaritiesCached = <String, dynamic>{};
    }

    try {
      __getRaritiesTtl = await PersistentStorageHolder.read('__getRaritiesTtl');
    } catch (e) {
      __getRaritiesTtl = <String, dynamic>{};
    }

    _completer.complete();
  }

  final _completer = Completer<void>();
  Future<void> get _completerFuture => _completer.future;

  late final Map<String, dynamic> __getRaritiesCached;

  late final __getRaritiesTtl;

  @override
  Future<List<dynamic>> _getRarities() async {
    await _completerFuture;

    final now = DateTime.now();
    final cachedTtl = __getRaritiesTtl[""];
    final currentTtl = cachedTtl != null ? DateTime.parse(cachedTtl) : null;

    if (currentTtl != null && currentTtl.isBefore(now)) {
      __getRaritiesTtl.remove("");
      __getRaritiesCached.remove("");
    }

    final cachedValue = __getRaritiesCached[""];
    if (cachedValue == null) {
      final List<dynamic> toReturn;
      try {
        final result = super._getRarities();

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      __getRaritiesCached[""] = toReturn;

      const duration = Duration(seconds: 86400);
      __getRaritiesTtl[""] = DateTime.now().add(duration).toIso8601String();

      await PersistentStorageHolder.write(
          '__getRaritiesCached', __getRaritiesCached);
      await PersistentStorageHolder.write('__getRaritiesTtl', __getRaritiesTtl);

      return toReturn;
    } else {
      try {
        return cachedValue.cast<dynamic>();
      } on NoSuchMethodError {
        throw Exception('''
             You have to provide your generic classes with a `.cast<T>()` 
             method, if you want to store them inside a persistent storage. 
             E.g.:
             
             class MyClass<T> {
               // ...       
                       
               MyClass<S> cast<S>() {
                 return MyClass<S>();
               }
             }

            ''');
      }
    }
  }
}

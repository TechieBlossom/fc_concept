// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'play_style_repository_impl.dart';

// **************************************************************************
// CachedGenerator
// **************************************************************************

abstract class _$PlayStyleRepositoryImpl {}

class _PlayStyleRepositoryImpl
    with PlayStyleRepositoryImpl
    implements _$PlayStyleRepositoryImpl {
  _PlayStyleRepositoryImpl() {
    _init();
  }

  Future<void> _init() async {
    try {
      final cachedMap =
          await PersistentStorageHolder.read('__getAllPlayStylesCached');

      cachedMap.forEach((_, value) {
        if (value is! List<dynamic>) throw TypeError();
      });

      __getAllPlayStylesCached = cachedMap;
    } catch (e) {
      __getAllPlayStylesCached = <String, dynamic>{};
    }

    try {
      __getAllPlayStylesTtl =
          await PersistentStorageHolder.read('__getAllPlayStylesTtl');
    } catch (e) {
      __getAllPlayStylesTtl = <String, dynamic>{};
    }

    _completer.complete();
  }

  final _completer = Completer<void>();
  Future<void> get _completerFuture => _completer.future;

  late final Map<String, dynamic> __getAllPlayStylesCached;

  late final __getAllPlayStylesTtl;

  @override
  Future<List<dynamic>> _getAllPlayStyles() async {
    await _completerFuture;

    final now = DateTime.now();
    final cachedTtl = __getAllPlayStylesTtl[""];
    final currentTtl = cachedTtl != null ? DateTime.parse(cachedTtl) : null;

    if (currentTtl != null && currentTtl.isBefore(now)) {
      __getAllPlayStylesTtl.remove("");
      __getAllPlayStylesCached.remove("");
    }

    final cachedValue = __getAllPlayStylesCached[""];
    if (cachedValue == null) {
      final List<dynamic> toReturn;
      try {
        final result = super._getAllPlayStyles();

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      __getAllPlayStylesCached[""] = toReturn;

      const duration = Duration(seconds: 2592000);
      __getAllPlayStylesTtl[""] =
          DateTime.now().add(duration).toIso8601String();

      await PersistentStorageHolder.write(
          '__getAllPlayStylesCached', __getAllPlayStylesCached);
      await PersistentStorageHolder.write(
          '__getAllPlayStylesTtl', __getAllPlayStylesTtl);

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

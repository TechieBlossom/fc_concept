// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'nation_repository_impl.dart';

// **************************************************************************
// CachedGenerator
// **************************************************************************

abstract class _$NationRepositoryImpl {}

class _NationRepositoryImpl
    with NationRepositoryImpl
    implements _$NationRepositoryImpl {
  _NationRepositoryImpl() {
    _init();
  }

  Future<void> _init() async {
    try {
      final cachedMap =
          await PersistentStorageHolder.read('__getNationsCached');

      cachedMap.forEach((_, value) {
        if (value is! List<dynamic>) throw TypeError();
      });

      __getNationsCached = cachedMap;
    } catch (e) {
      __getNationsCached = <String, dynamic>{};
    }

    try {
      __getNationsTtl = await PersistentStorageHolder.read('__getNationsTtl');
    } catch (e) {
      __getNationsTtl = <String, dynamic>{};
    }

    _completer.complete();
  }

  final _completer = Completer<void>();
  Future<void> get _completerFuture => _completer.future;

  late final Map<String, dynamic> __getNationsCached;

  late final __getNationsTtl;

  @override
  Future<List<dynamic>> _getNations(bool isTop) async {
    await _completerFuture;

    final now = DateTime.now();
    final cachedTtl = __getNationsTtl["${isTop.hashCode}"];
    final currentTtl = cachedTtl != null ? DateTime.parse(cachedTtl) : null;

    if (currentTtl != null && currentTtl.isBefore(now)) {
      __getNationsTtl.remove("${isTop.hashCode}");
      __getNationsCached.remove("${isTop.hashCode}");
    }

    final cachedValue = __getNationsCached["${isTop.hashCode}"];
    if (cachedValue == null) {
      final List<dynamic> toReturn;
      try {
        final result = super._getNations(isTop);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      __getNationsCached["${isTop.hashCode}"] = toReturn;

      const duration = Duration(seconds: 2592000);
      __getNationsTtl["${isTop.hashCode}"] =
          DateTime.now().add(duration).toIso8601String();

      await PersistentStorageHolder.write(
          '__getNationsCached', __getNationsCached);
      await PersistentStorageHolder.write('__getNationsTtl', __getNationsTtl);

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

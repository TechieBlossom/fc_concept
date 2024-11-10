// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'position_repository_impl.dart';

// **************************************************************************
// CachedGenerator
// **************************************************************************

abstract class _$PositionRepositoryImpl {}

class _PositionRepositoryImpl
    with PositionRepositoryImpl
    implements _$PositionRepositoryImpl {
  _PositionRepositoryImpl() {
    _init();
  }

  Future<void> _init() async {
    try {
      final cachedMap =
          await PersistentStorageHolder.read('__getPositionsCached');

      cachedMap.forEach((_, value) {
        if (value is! List<dynamic>) throw TypeError();
      });

      __getPositionsCached = cachedMap;
    } catch (e) {
      __getPositionsCached = <String, dynamic>{};
    }

    try {
      __getPositionsTtl =
          await PersistentStorageHolder.read('__getPositionsTtl');
    } catch (e) {
      __getPositionsTtl = <String, dynamic>{};
    }

    _completer.complete();
  }

  final _completer = Completer<void>();
  Future<void> get _completerFuture => _completer.future;

  late final Map<String, dynamic> __getPositionsCached;

  late final __getPositionsTtl;

  @override
  Future<List<dynamic>> _getPositions() async {
    await _completerFuture;

    final now = DateTime.now();
    final cachedTtl = __getPositionsTtl[""];
    final currentTtl = cachedTtl != null ? DateTime.parse(cachedTtl) : null;

    if (currentTtl != null && currentTtl.isBefore(now)) {
      __getPositionsTtl.remove("");
      __getPositionsCached.remove("");
    }

    final cachedValue = __getPositionsCached[""];
    if (cachedValue == null) {
      final List<dynamic> toReturn;
      try {
        final result = super._getPositions();

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      __getPositionsCached[""] = toReturn;

      const duration = Duration(seconds: 31536000);
      __getPositionsTtl[""] = DateTime.now().add(duration).toIso8601String();

      await PersistentStorageHolder.write(
          '__getPositionsCached', __getPositionsCached);
      await PersistentStorageHolder.write(
          '__getPositionsTtl', __getPositionsTtl);

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

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'league_repository_impl.dart';

// **************************************************************************
// CachedGenerator
// **************************************************************************

abstract class _$LeagueRepositoryImpl {}

class _LeagueRepositoryImpl
    with LeagueRepositoryImpl
    implements _$LeagueRepositoryImpl {
  _LeagueRepositoryImpl() {
    _init();
  }

  Future<void> _init() async {
    try {
      final cachedMap =
          await PersistentStorageHolder.read('__getTopLeaguesCached');

      cachedMap.forEach((_, value) {
        if (value is! List<dynamic>) throw TypeError();
      });

      __getTopLeaguesCached = cachedMap;
    } catch (e) {
      __getTopLeaguesCached = <String, dynamic>{};
    }

    try {
      __getTopLeaguesTtl =
          await PersistentStorageHolder.read('__getTopLeaguesTtl');
    } catch (e) {
      __getTopLeaguesTtl = <String, dynamic>{};
    }

    _completer.complete();
  }

  final _completer = Completer<void>();
  Future<void> get _completerFuture => _completer.future;

  late final Map<String, dynamic> __getTopLeaguesCached;

  late final __getTopLeaguesTtl;

  @override
  Future<List<dynamic>> _getTopLeagues() async {
    await _completerFuture;

    final now = DateTime.now();
    final cachedTtl = __getTopLeaguesTtl[""];
    final currentTtl = cachedTtl != null ? DateTime.parse(cachedTtl) : null;

    if (currentTtl != null && currentTtl.isBefore(now)) {
      __getTopLeaguesTtl.remove("");
      __getTopLeaguesCached.remove("");
    }

    final cachedValue = __getTopLeaguesCached[""];
    if (cachedValue == null) {
      final List<dynamic> toReturn;
      try {
        final result = super._getTopLeagues();

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      __getTopLeaguesCached[""] = toReturn;

      const duration = Duration(seconds: 43200);
      __getTopLeaguesTtl[""] = DateTime.now().add(duration).toIso8601String();

      await PersistentStorageHolder.write(
          '__getTopLeaguesCached', __getTopLeaguesCached);
      await PersistentStorageHolder.write(
          '__getTopLeaguesTtl', __getTopLeaguesTtl);

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

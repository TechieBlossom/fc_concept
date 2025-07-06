// dart format width=80
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
      final cachedMap = await PersistentStorageHolder.read(
        '__getLeaguesCached',
      );

      cachedMap.forEach((_, value) {
        if (value is! List<dynamic>) throw TypeError();
      });

      __getLeaguesCached = cachedMap;
    } catch (e) {
      __getLeaguesCached = <String, dynamic>{};
    }

    try {
      __getLeaguesTtl = await PersistentStorageHolder.read('__getLeaguesTtl');
    } catch (e) {
      __getLeaguesTtl = <String, dynamic>{};
    }

    _completer.complete();
  }

  final _completer = Completer<void>();
  Future<void> get _completerFuture => _completer.future;

  late final Map<String, dynamic> __getLeaguesCached;

  late final __getLeaguesTtl;

  @override
  Future<List<dynamic>> _getLeagues(bool isTop) async {
    await _completerFuture;

    final now = DateTime.now();
    final cachedTtl = __getLeaguesTtl["${isTop.hashCode}"];
    final currentTtl = cachedTtl != null ? DateTime.parse(cachedTtl) : null;

    if (currentTtl != null && currentTtl.isBefore(now)) {
      __getLeaguesTtl.remove("${isTop.hashCode}");
      __getLeaguesCached.remove("${isTop.hashCode}");
    }

    final cachedValue = __getLeaguesCached["${isTop.hashCode}"];
    if (cachedValue == null) {
      final List<dynamic> toReturn;
      try {
        final result = super._getLeagues(isTop);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      __getLeaguesCached["${isTop.hashCode}"] = toReturn;

      const duration = Duration(seconds: 2592000);
      __getLeaguesTtl["${isTop.hashCode}"] = DateTime.now()
          .add(duration)
          .toIso8601String();

      await PersistentStorageHolder.write(
        '__getLeaguesCached',
        __getLeaguesCached,
      );
      await PersistentStorageHolder.write('__getLeaguesTtl', __getLeaguesTtl);

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

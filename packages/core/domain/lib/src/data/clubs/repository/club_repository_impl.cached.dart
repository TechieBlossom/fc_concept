// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'club_repository_impl.dart';

// **************************************************************************
// CachedGenerator
// **************************************************************************

abstract class _$ClubRepositoryImpl {}

class _ClubRepositoryImpl
    with ClubRepositoryImpl
    implements _$ClubRepositoryImpl {
  _ClubRepositoryImpl() {
    _init();
  }

  Future<void> _init() async {
    try {
      final cachedMap = await PersistentStorageHolder.read('__getClubsCached');

      cachedMap.forEach((_, value) {
        if (value is! List<dynamic>) throw TypeError();
      });

      __getClubsCached = cachedMap;
    } catch (e) {
      __getClubsCached = <String, dynamic>{};
    }

    try {
      __getClubsTtl = await PersistentStorageHolder.read('__getClubsTtl');
    } catch (e) {
      __getClubsTtl = <String, dynamic>{};
    }

    _completer.complete();
  }

  final _completer = Completer<void>();
  Future<void> get _completerFuture => _completer.future;

  late final Map<String, dynamic> __getClubsCached;

  late final __getClubsTtl;

  @override
  Future<List<dynamic>> _getClubs(String filters) async {
    await _completerFuture;

    final now = DateTime.now();
    final cachedTtl = __getClubsTtl["${filters.hashCode}"];
    final currentTtl = cachedTtl != null ? DateTime.parse(cachedTtl) : null;

    if (currentTtl != null && currentTtl.isBefore(now)) {
      __getClubsTtl.remove("${filters.hashCode}");
      __getClubsCached.remove("${filters.hashCode}");
    }

    final cachedValue = __getClubsCached["${filters.hashCode}"];
    if (cachedValue == null) {
      final List<dynamic> toReturn;
      try {
        final result = super._getClubs(filters);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      __getClubsCached["${filters.hashCode}"] = toReturn;

      const duration = Duration(seconds: 2592000);
      __getClubsTtl["${filters.hashCode}"] = DateTime.now()
          .add(duration)
          .toIso8601String();

      await PersistentStorageHolder.write('__getClubsCached', __getClubsCached);
      await PersistentStorageHolder.write('__getClubsTtl', __getClubsTtl);

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

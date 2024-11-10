// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'player_repository_impl.dart';

// **************************************************************************
// CachedGenerator
// **************************************************************************

abstract class _$PlayerRepositoryImpl {}

class _PlayerRepositoryImpl
    with PlayerRepositoryImpl
    implements _$PlayerRepositoryImpl {
  _PlayerRepositoryImpl() {
    _init();
  }

  Future<void> _init() async {
    try {
      final cachedMap =
          await PersistentStorageHolder.read('__topPlayersCached');

      cachedMap.forEach((_, value) {
        if (value is! List<dynamic>) throw TypeError();
      });

      __topPlayersCached = cachedMap;
    } catch (e) {
      __topPlayersCached = <String, dynamic>{};
    }

    try {
      __topPlayersTtl = await PersistentStorageHolder.read('__topPlayersTtl');
    } catch (e) {
      __topPlayersTtl = <String, dynamic>{};
    }

    try {
      final cachedMap =
          await PersistentStorageHolder.read('__recentPlayersCached');

      cachedMap.forEach((_, value) {
        if (value is! List<dynamic>) throw TypeError();
      });

      __recentPlayersCached = cachedMap;
    } catch (e) {
      __recentPlayersCached = <String, dynamic>{};
    }

    try {
      __recentPlayersTtl =
          await PersistentStorageHolder.read('__recentPlayersTtl');
    } catch (e) {
      __recentPlayersTtl = <String, dynamic>{};
    }

    try {
      final cachedMap =
          await PersistentStorageHolder.read('__sbcPlayersCached');

      cachedMap.forEach((_, value) {
        if (value is! List<dynamic>) throw TypeError();
      });

      __sbcPlayersCached = cachedMap;
    } catch (e) {
      __sbcPlayersCached = <String, dynamic>{};
    }

    try {
      __sbcPlayersTtl = await PersistentStorageHolder.read('__sbcPlayersTtl');
    } catch (e) {
      __sbcPlayersTtl = <String, dynamic>{};
    }

    try {
      final cachedMap =
          await PersistentStorageHolder.read('__getPositionalPlayersCached');

      cachedMap.forEach((_, value) {
        if (value is! List<dynamic>) throw TypeError();
      });

      __getPositionalPlayersCached = cachedMap;
    } catch (e) {
      __getPositionalPlayersCached = <String, dynamic>{};
    }

    try {
      __getPositionalPlayersTtl =
          await PersistentStorageHolder.read('__getPositionalPlayersTtl');
    } catch (e) {
      __getPositionalPlayersTtl = <String, dynamic>{};
    }

    try {
      final cachedMap =
          await PersistentStorageHolder.read('__getPlayersByRaritySquadCached');

      cachedMap.forEach((_, value) {
        if (value is! List<dynamic>) throw TypeError();
      });

      __getPlayersByRaritySquadCached = cachedMap;
    } catch (e) {
      __getPlayersByRaritySquadCached = <String, dynamic>{};
    }

    try {
      __getPlayersByRaritySquadTtl =
          await PersistentStorageHolder.read('__getPlayersByRaritySquadTtl');
    } catch (e) {
      __getPlayersByRaritySquadTtl = <String, dynamic>{};
    }

    try {
      final cachedMap = await PersistentStorageHolder.read('__getPlayerCached');

      cachedMap.forEach((_, value) {
        if (value is! dynamic) throw TypeError();
      });

      __getPlayerCached = cachedMap;
    } catch (e) {
      __getPlayerCached = <String, dynamic>{};
    }

    try {
      __getPlayerTtl = await PersistentStorageHolder.read('__getPlayerTtl');
    } catch (e) {
      __getPlayerTtl = <String, dynamic>{};
    }

    _completer.complete();
  }

  final _completer = Completer<void>();
  Future<void> get _completerFuture => _completer.future;

  late final Map<String, dynamic> __topPlayersCached;
  late final Map<String, dynamic> __recentPlayersCached;
  late final Map<String, dynamic> __sbcPlayersCached;
  late final Map<String, dynamic> __getPositionalPlayersCached;
  late final Map<String, dynamic> __getPlayersByRaritySquadCached;
  late final Map<String, dynamic> __getPlayerCached;

  late final __topPlayersTtl;
  late final __recentPlayersTtl;
  late final __sbcPlayersTtl;
  late final __getPositionalPlayersTtl;
  late final __getPlayersByRaritySquadTtl;
  late final __getPlayerTtl;

  @override
  Future<List<dynamic>> _topPlayers({int page = 0}) async {
    await _completerFuture;

    final now = DateTime.now();
    final cachedTtl = __topPlayersTtl["${page.hashCode}"];
    final currentTtl = cachedTtl != null ? DateTime.parse(cachedTtl) : null;

    if (currentTtl != null && currentTtl.isBefore(now)) {
      __topPlayersTtl.remove("${page.hashCode}");
      __topPlayersCached.remove("${page.hashCode}");
    }

    final cachedValue = __topPlayersCached["${page.hashCode}"];
    if (cachedValue == null) {
      final List<dynamic> toReturn;
      try {
        final result = super._topPlayers(page: page);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      __topPlayersCached["${page.hashCode}"] = toReturn;

      const duration = Duration(seconds: 3600);
      __topPlayersTtl["${page.hashCode}"] =
          DateTime.now().add(duration).toIso8601String();

      await PersistentStorageHolder.write(
          '__topPlayersCached', __topPlayersCached);
      await PersistentStorageHolder.write('__topPlayersTtl', __topPlayersTtl);

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

  @override
  Future<List<dynamic>> _recentPlayers() async {
    await _completerFuture;

    final now = DateTime.now();
    final cachedTtl = __recentPlayersTtl[""];
    final currentTtl = cachedTtl != null ? DateTime.parse(cachedTtl) : null;

    if (currentTtl != null && currentTtl.isBefore(now)) {
      __recentPlayersTtl.remove("");
      __recentPlayersCached.remove("");
    }

    final cachedValue = __recentPlayersCached[""];
    if (cachedValue == null) {
      final List<dynamic> toReturn;
      try {
        final result = super._recentPlayers();

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      __recentPlayersCached[""] = toReturn;

      const duration = Duration(seconds: 3600);
      __recentPlayersTtl[""] = DateTime.now().add(duration).toIso8601String();

      await PersistentStorageHolder.write(
          '__recentPlayersCached', __recentPlayersCached);
      await PersistentStorageHolder.write(
          '__recentPlayersTtl', __recentPlayersTtl);

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

  @override
  Future<List<dynamic>> _sbcPlayers() async {
    await _completerFuture;

    final now = DateTime.now();
    final cachedTtl = __sbcPlayersTtl[""];
    final currentTtl = cachedTtl != null ? DateTime.parse(cachedTtl) : null;

    if (currentTtl != null && currentTtl.isBefore(now)) {
      __sbcPlayersTtl.remove("");
      __sbcPlayersCached.remove("");
    }

    final cachedValue = __sbcPlayersCached[""];
    if (cachedValue == null) {
      final List<dynamic> toReturn;
      try {
        final result = super._sbcPlayers();

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      __sbcPlayersCached[""] = toReturn;

      const duration = Duration(seconds: 3600);
      __sbcPlayersTtl[""] = DateTime.now().add(duration).toIso8601String();

      await PersistentStorageHolder.write(
          '__sbcPlayersCached', __sbcPlayersCached);
      await PersistentStorageHolder.write('__sbcPlayersTtl', __sbcPlayersTtl);

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

  @override
  Future<List<dynamic>> _getPositionalPlayers(
      PositionGroup positionGroup) async {
    await _completerFuture;

    final now = DateTime.now();
    final cachedTtl = __getPositionalPlayersTtl["${positionGroup.hashCode}"];
    final currentTtl = cachedTtl != null ? DateTime.parse(cachedTtl) : null;

    if (currentTtl != null && currentTtl.isBefore(now)) {
      __getPositionalPlayersTtl.remove("${positionGroup.hashCode}");
      __getPositionalPlayersCached.remove("${positionGroup.hashCode}");
    }

    final cachedValue =
        __getPositionalPlayersCached["${positionGroup.hashCode}"];
    if (cachedValue == null) {
      final List<dynamic> toReturn;
      try {
        final result = super._getPositionalPlayers(positionGroup);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      __getPositionalPlayersCached["${positionGroup.hashCode}"] = toReturn;

      const duration = Duration(seconds: 3600);
      __getPositionalPlayersTtl["${positionGroup.hashCode}"] =
          DateTime.now().add(duration).toIso8601String();

      await PersistentStorageHolder.write(
          '__getPositionalPlayersCached', __getPositionalPlayersCached);
      await PersistentStorageHolder.write(
          '__getPositionalPlayersTtl', __getPositionalPlayersTtl);

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

  @override
  Future<List<dynamic>> _getPlayersByRaritySquad(
      {required int raritySquadId}) async {
    await _completerFuture;

    final now = DateTime.now();
    final cachedTtl = __getPlayersByRaritySquadTtl["${raritySquadId.hashCode}"];
    final currentTtl = cachedTtl != null ? DateTime.parse(cachedTtl) : null;

    if (currentTtl != null && currentTtl.isBefore(now)) {
      __getPlayersByRaritySquadTtl.remove("${raritySquadId.hashCode}");
      __getPlayersByRaritySquadCached.remove("${raritySquadId.hashCode}");
    }

    final cachedValue =
        __getPlayersByRaritySquadCached["${raritySquadId.hashCode}"];
    if (cachedValue == null) {
      final List<dynamic> toReturn;
      try {
        final result =
            super._getPlayersByRaritySquad(raritySquadId: raritySquadId);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      __getPlayersByRaritySquadCached["${raritySquadId.hashCode}"] = toReturn;

      const duration = Duration(seconds: 3600);
      __getPlayersByRaritySquadTtl["${raritySquadId.hashCode}"] =
          DateTime.now().add(duration).toIso8601String();

      await PersistentStorageHolder.write(
          '__getPlayersByRaritySquadCached', __getPlayersByRaritySquadCached);
      await PersistentStorageHolder.write(
          '__getPlayersByRaritySquadTtl', __getPlayersByRaritySquadTtl);

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

  @override
  Future<dynamic> _getPlayer({required int playerId}) async {
    await _completerFuture;

    final now = DateTime.now();
    final cachedTtl = __getPlayerTtl["${playerId.hashCode}"];
    final currentTtl = cachedTtl != null ? DateTime.parse(cachedTtl) : null;

    if (currentTtl != null && currentTtl.isBefore(now)) {
      __getPlayerTtl.remove("${playerId.hashCode}");
      __getPlayerCached.remove("${playerId.hashCode}");
    }

    final cachedValue = __getPlayerCached["${playerId.hashCode}"];
    if (cachedValue == null) {
      final dynamic toReturn;
      try {
        final result = super._getPlayer(playerId: playerId);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      __getPlayerCached["${playerId.hashCode}"] = toReturn;

      const duration = Duration(seconds: 2592000);
      __getPlayerTtl["${playerId.hashCode}"] =
          DateTime.now().add(duration).toIso8601String();

      await PersistentStorageHolder.write(
          '__getPlayerCached', __getPlayerCached);
      await PersistentStorageHolder.write('__getPlayerTtl', __getPlayerTtl);

      return toReturn;
    } else {
      return cachedValue;
    }
  }
}

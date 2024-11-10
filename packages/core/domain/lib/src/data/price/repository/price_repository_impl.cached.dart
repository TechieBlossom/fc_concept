// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'price_repository_impl.dart';

// **************************************************************************
// CachedGenerator
// **************************************************************************

abstract class _$PriceRepositoryImpl {
  ApiClient get _apiClient;
}

class _PriceRepositoryImpl
    with PriceRepositoryImpl
    implements _$PriceRepositoryImpl {
  _PriceRepositoryImpl(this._apiClient) {
    _init();
  }

  Future<void> _init() async {
    try {
      final cachedMap =
          await PersistentStorageHolder.read('__getPlayerPriceCached');

      cachedMap.forEach((_, value) {
        if (value is! dynamic) throw TypeError();
      });

      __getPlayerPriceCached = cachedMap;
    } catch (e) {
      __getPlayerPriceCached = <String, dynamic>{};
    }

    try {
      __getPlayerPriceTtl =
          await PersistentStorageHolder.read('__getPlayerPriceTtl');
    } catch (e) {
      __getPlayerPriceTtl = <String, dynamic>{};
    }

    try {
      final cachedMap =
          await PersistentStorageHolder.read('__getOldPlayerPriceCached');

      cachedMap.forEach((_, value) {
        if (value is! List<dynamic>) throw TypeError();
      });

      __getOldPlayerPriceCached = cachedMap;
    } catch (e) {
      __getOldPlayerPriceCached = <String, dynamic>{};
    }

    try {
      __getOldPlayerPriceTtl =
          await PersistentStorageHolder.read('__getOldPlayerPriceTtl');
    } catch (e) {
      __getOldPlayerPriceTtl = <String, dynamic>{};
    }

    try {
      final cachedMap = await PersistentStorageHolder.read(
          '__getCheapestPricesByRatingCached');

      cachedMap.forEach((_, value) {
        if (value is! List<dynamic>) throw TypeError();
      });

      __getCheapestPricesByRatingCached = cachedMap;
    } catch (e) {
      __getCheapestPricesByRatingCached = <String, dynamic>{};
    }

    try {
      __getCheapestPricesByRatingTtl =
          await PersistentStorageHolder.read('__getCheapestPricesByRatingTtl');
    } catch (e) {
      __getCheapestPricesByRatingTtl = <String, dynamic>{};
    }

    _completer.complete();
  }

  @override
  final ApiClient _apiClient;
  final _completer = Completer<void>();
  Future<void> get _completerFuture => _completer.future;

  late final Map<String, dynamic> __getPlayerPriceCached;
  late final Map<String, dynamic> __getOldPlayerPriceCached;
  late final Map<String, dynamic> __getCheapestPricesByRatingCached;

  late final __getPlayerPriceTtl;
  late final __getOldPlayerPriceTtl;
  late final __getCheapestPricesByRatingTtl;

  @override
  Future<dynamic> _getPlayerPrice(int playerId) async {
    await _completerFuture;

    final now = DateTime.now();
    final cachedTtl = __getPlayerPriceTtl["${playerId.hashCode}"];
    final currentTtl = cachedTtl != null ? DateTime.parse(cachedTtl) : null;

    if (currentTtl != null && currentTtl.isBefore(now)) {
      __getPlayerPriceTtl.remove("${playerId.hashCode}");
      __getPlayerPriceCached.remove("${playerId.hashCode}");
    }

    final cachedValue = __getPlayerPriceCached["${playerId.hashCode}"];
    if (cachedValue == null) {
      final dynamic toReturn;
      try {
        final result = super._getPlayerPrice(playerId);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      __getPlayerPriceCached["${playerId.hashCode}"] = toReturn;

      const duration = Duration(seconds: 3600);
      __getPlayerPriceTtl["${playerId.hashCode}"] =
          DateTime.now().add(duration).toIso8601String();

      await PersistentStorageHolder.write(
          '__getPlayerPriceCached', __getPlayerPriceCached);
      await PersistentStorageHolder.write(
          '__getPlayerPriceTtl', __getPlayerPriceTtl);

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<List<dynamic>> _getOldPlayerPrice(List<int> eaIds) async {
    await _completerFuture;

    final now = DateTime.now();
    final cachedTtl = __getOldPlayerPriceTtl["${eaIds.hashCode}"];
    final currentTtl = cachedTtl != null ? DateTime.parse(cachedTtl) : null;

    if (currentTtl != null && currentTtl.isBefore(now)) {
      __getOldPlayerPriceTtl.remove("${eaIds.hashCode}");
      __getOldPlayerPriceCached.remove("${eaIds.hashCode}");
    }

    final cachedValue = __getOldPlayerPriceCached["${eaIds.hashCode}"];
    if (cachedValue == null) {
      final List<dynamic> toReturn;
      try {
        final result = super._getOldPlayerPrice(eaIds);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      __getOldPlayerPriceCached["${eaIds.hashCode}"] = toReturn;

      const duration = Duration(seconds: 3600);
      __getOldPlayerPriceTtl["${eaIds.hashCode}"] =
          DateTime.now().add(duration).toIso8601String();

      await PersistentStorageHolder.write(
          '__getOldPlayerPriceCached', __getOldPlayerPriceCached);
      await PersistentStorageHolder.write(
          '__getOldPlayerPriceTtl', __getOldPlayerPriceTtl);

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
  Future<List<dynamic>> _getCheapestPricesByRating(
      {required int page, required int rating}) async {
    await _completerFuture;

    final now = DateTime.now();
    final cachedTtl =
        __getCheapestPricesByRatingTtl["${page.hashCode}${rating.hashCode}"];
    final currentTtl = cachedTtl != null ? DateTime.parse(cachedTtl) : null;

    if (currentTtl != null && currentTtl.isBefore(now)) {
      __getCheapestPricesByRatingTtl
          .remove("${page.hashCode}${rating.hashCode}");
      __getCheapestPricesByRatingCached
          .remove("${page.hashCode}${rating.hashCode}");
    }

    final cachedValue =
        __getCheapestPricesByRatingCached["${page.hashCode}${rating.hashCode}"];
    if (cachedValue == null) {
      final List<dynamic> toReturn;
      try {
        final result =
            super._getCheapestPricesByRating(page: page, rating: rating);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      __getCheapestPricesByRatingCached["${page.hashCode}${rating.hashCode}"] =
          toReturn;

      const duration = Duration(seconds: 3600);
      __getCheapestPricesByRatingTtl["${page.hashCode}${rating.hashCode}"] =
          DateTime.now().add(duration).toIso8601String();

      await PersistentStorageHolder.write('__getCheapestPricesByRatingCached',
          __getCheapestPricesByRatingCached);
      await PersistentStorageHolder.write(
          '__getCheapestPricesByRatingTtl', __getCheapestPricesByRatingTtl);

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

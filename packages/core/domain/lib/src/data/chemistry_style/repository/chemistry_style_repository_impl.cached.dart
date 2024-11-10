// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'chemistry_style_repository_impl.dart';

// **************************************************************************
// CachedGenerator
// **************************************************************************

abstract class _$ChemistryStyleRepositoryImpl {}

class _ChemistryStyleRepositoryImpl
    with ChemistryStyleRepositoryImpl
    implements _$ChemistryStyleRepositoryImpl {
  _ChemistryStyleRepositoryImpl() {
    _init();
  }

  Future<void> _init() async {
    try {
      final cachedMap =
          await PersistentStorageHolder.read('__getAllChemistryStylesCached');

      cachedMap.forEach((_, value) {
        if (value is! List<dynamic>) throw TypeError();
      });

      __getAllChemistryStylesCached = cachedMap;
    } catch (e) {
      __getAllChemistryStylesCached = <String, dynamic>{};
    }

    try {
      __getAllChemistryStylesTtl =
          await PersistentStorageHolder.read('__getAllChemistryStylesTtl');
    } catch (e) {
      __getAllChemistryStylesTtl = <String, dynamic>{};
    }

    _completer.complete();
  }

  final _completer = Completer<void>();
  Future<void> get _completerFuture => _completer.future;

  late final Map<String, dynamic> __getAllChemistryStylesCached;

  late final __getAllChemistryStylesTtl;

  @override
  Future<List<dynamic>> _getAllChemistryStyles() async {
    await _completerFuture;

    final now = DateTime.now();
    final cachedTtl = __getAllChemistryStylesTtl[""];
    final currentTtl = cachedTtl != null ? DateTime.parse(cachedTtl) : null;

    if (currentTtl != null && currentTtl.isBefore(now)) {
      __getAllChemistryStylesTtl.remove("");
      __getAllChemistryStylesCached.remove("");
    }

    final cachedValue = __getAllChemistryStylesCached[""];
    if (cachedValue == null) {
      final List<dynamic> toReturn;
      try {
        final result = super._getAllChemistryStyles();

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      __getAllChemistryStylesCached[""] = toReturn;

      const duration = Duration(seconds: 31536000);
      __getAllChemistryStylesTtl[""] =
          DateTime.now().add(duration).toIso8601String();

      await PersistentStorageHolder.write(
          '__getAllChemistryStylesCached', __getAllChemistryStylesCached);
      await PersistentStorageHolder.write(
          '__getAllChemistryStylesTtl', __getAllChemistryStylesTtl);

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

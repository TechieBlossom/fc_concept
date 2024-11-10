// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'role_repository_impl.dart';

// **************************************************************************
// CachedGenerator
// **************************************************************************

abstract class _$RoleRepositoryImpl {}

class _RoleRepositoryImpl
    with RoleRepositoryImpl
    implements _$RoleRepositoryImpl {
  _RoleRepositoryImpl() {
    _init();
  }

  Future<void> _init() async {
    try {
      final cachedMap =
          await PersistentStorageHolder.read('__getAllRolesCached');

      cachedMap.forEach((_, value) {
        if (value is! List<dynamic>) throw TypeError();
      });

      __getAllRolesCached = cachedMap;
    } catch (e) {
      __getAllRolesCached = <String, dynamic>{};
    }

    try {
      __getAllRolesTtl = await PersistentStorageHolder.read('__getAllRolesTtl');
    } catch (e) {
      __getAllRolesTtl = <String, dynamic>{};
    }

    _completer.complete();
  }

  final _completer = Completer<void>();
  Future<void> get _completerFuture => _completer.future;

  late final Map<String, dynamic> __getAllRolesCached;

  late final __getAllRolesTtl;

  @override
  Future<List<dynamic>> _getAllRoles() async {
    await _completerFuture;

    final now = DateTime.now();
    final cachedTtl = __getAllRolesTtl[""];
    final currentTtl = cachedTtl != null ? DateTime.parse(cachedTtl) : null;

    if (currentTtl != null && currentTtl.isBefore(now)) {
      __getAllRolesTtl.remove("");
      __getAllRolesCached.remove("");
    }

    final cachedValue = __getAllRolesCached[""];
    if (cachedValue == null) {
      final List<dynamic> toReturn;
      try {
        final result = super._getAllRoles();

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      __getAllRolesCached[""] = toReturn;

      const duration = Duration(seconds: 2592000);
      __getAllRolesTtl[""] = DateTime.now().add(duration).toIso8601String();

      await PersistentStorageHolder.write(
          '__getAllRolesCached', __getAllRolesCached);
      await PersistentStorageHolder.write('__getAllRolesTtl', __getAllRolesTtl);

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

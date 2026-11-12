import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';
import 'package:injectable/injectable.dart';

import '../database/hive_registry.dart';

/// Third-party instances for DI.
@module
abstract class RegisterModule {
  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  @preResolve
  @Named(HiveBoxes.settings)
  @singleton
  Future<Box<String>> get settingsBox =>
      Hive.openBox<String>(HiveBoxes.settings);

  // Lazy: Home JSON can be large and is read once per launch.
  @preResolve
  @Named(HiveBoxes.homeCache)
  @singleton
  Future<LazyBox<String>> get homeCacheBox =>
      Hive.openLazyBox<String>(HiveBoxes.homeCache);

  @preResolve
  @Named(HiveBoxes.catalogCache)
  @singleton
  Future<LazyBox<String>> get catalogCacheBox =>
      Hive.openLazyBox<String>(HiveBoxes.catalogCache);

  @preResolve
  @Named(HiveBoxes.cart)
  @singleton
  Future<Box<String>> get cartBox => Hive.openBox<String>(HiveBoxes.cart);

  @preResolve
  @Named(HiveBoxes.account)
  @singleton
  Future<LazyBox<String>> get accountBox =>
      Hive.openLazyBox<String>(HiveBoxes.account);

  @preResolve
  @Named(HiveBoxes.favourites)
  @singleton
  Future<Box<String>> get favouritesBox =>
      Hive.openBox<String>(HiveBoxes.favourites);

  @preResolve
  @Named(HiveBoxes.viewed)
  @singleton
  Future<Box<String>> get viewedBox => Hive.openBox<String>(HiveBoxes.viewed);
}

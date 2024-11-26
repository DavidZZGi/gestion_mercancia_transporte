import 'dart:async';

import 'package:gestion_mercancia_transporte/authentication/authentication_repository/authentication_repository.dart';
import 'package:gestion_mercancia_transporte/authentication/authentication_repository/service/auth_service.dart';
import 'package:get_it/get_it.dart';

import '../data/database_helper.dart';

FutureOr<void> initCore(GetIt sl) async {
  await DatabaseHelper.instance.initDatabase();
  final sqliteInstance = DatabaseHelper.instance;
  sl
    ..registerLazySingleton<AuthService>(
      () => AuthService(databaseHelper: sqliteInstance),
    )
    ..registerLazySingleton<AuthenticationRepository>(
      () => AuthenticationRepository(authService: sl<AuthService>()),
    );
}

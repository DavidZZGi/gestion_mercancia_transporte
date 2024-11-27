import 'dart:async';

import 'package:gestion_mercancia_transporte/authentication/authentication_repository/authentication_repository.dart';
import 'package:gestion_mercancia_transporte/authentication/authentication_repository/service/auth_service.dart';
import 'package:gestion_mercancia_transporte/authentication/domain/change_password_use_case.dart';
import 'package:gestion_mercancia_transporte/authentication/domain/sign_in_use_case.dart';
import 'package:gestion_mercancia_transporte/authentication/state_managament/change_password_bloc/bloc/change_password_bloc.dart';
import 'package:gestion_mercancia_transporte/authentication/state_managament/sign_in_bloc/bloc/sign_in_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../authentication/domain/sign_up_use_case.dart';
import '../../authentication/state_managament/sign_up_bloc/bloc/sign_up_bloc.dart';
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
    )
    ..registerLazySingleton<SignInUseCase>(
      () => SignInUseCase(
          authenticationRepository: sl<AuthenticationRepository>()),
    )
    ..registerLazySingleton<SignUpUseCase>(
      () => SignUpUseCase(
          authenticationRepository: sl<AuthenticationRepository>()),
    )
    ..registerLazySingleton<ChangePasswordUseCase>(
      () => ChangePasswordUseCase(
          authenticationRepository: sl<AuthenticationRepository>()),
    )
    ..registerLazySingleton<SignInBloc>(
      () => SignInBloc(signInUseCase: sl<SignInUseCase>()),
    )
    ..registerLazySingleton<SignUpBloc>(
      () => SignUpBloc(signUpUseCase: sl<SignUpUseCase>()),
    )
    ..registerLazySingleton<ChangePasswordBloc>(
      () => ChangePasswordBloc(
          changePasswordUseCase: sl<ChangePasswordUseCase>()),
    );
}

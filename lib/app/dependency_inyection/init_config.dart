import 'dart:async';

import 'package:gestion_mercancia_transporte/authentication/authentication_repository/authentication_repository.dart';
import 'package:gestion_mercancia_transporte/authentication/authentication_repository/service/auth_service.dart';
import 'package:gestion_mercancia_transporte/authentication/domain/change_password_use_case.dart';
import 'package:gestion_mercancia_transporte/authentication/domain/sign_in_use_case.dart';
import 'package:gestion_mercancia_transporte/authentication/state_managament/change_password_bloc/bloc/change_password_bloc.dart';
import 'package:gestion_mercancia_transporte/authentication/state_managament/sign_in_bloc/bloc/sign_in_bloc.dart';
import 'package:gestion_mercancia_transporte/destinatario/destinatario_ropository/destinatario_repository.dart';
import 'package:gestion_mercancia_transporte/destinatario/destinatario_ropository/service/destinatario_service.dart';
import 'package:gestion_mercancia_transporte/destinatario/domain/create_destinatario_use_case.dart';
import 'package:gestion_mercancia_transporte/destinatario/domain/delete_destinatario_use_case.dart';
import 'package:gestion_mercancia_transporte/destinatario/domain/get_destinatarios_use_case.dart';
import 'package:gestion_mercancia_transporte/destinatario/domain/update_destinatario_use_case.dart';
import 'package:gestion_mercancia_transporte/destinatario/state_managament/bloc/destinatario_bloc.dart';
import 'package:gestion_mercancia_transporte/transport_request/module/create_transport_request_use_case.dart';
import 'package:gestion_mercancia_transporte/transport_request/module/delete_transport_request_use_case.dart';
import 'package:gestion_mercancia_transporte/transport_request/module/get_transport_request_use_case.dart';
import 'package:gestion_mercancia_transporte/transport_request/module/update_request_status_use_case.dart';
import 'package:gestion_mercancia_transporte/transport_request/state_managament/bloc/transport_request_bloc.dart';
import 'package:gestion_mercancia_transporte/transport_request/transport_request_repository/service/transport_request_service.dart';
import 'package:gestion_mercancia_transporte/transport_request/transport_request_repository/transport_request_repository.dart';
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
    )
    ..registerLazySingleton<DestinatarioService>(
      () => DestinatarioService(databaseHelper: sqliteInstance),
    )
    ..registerLazySingleton<DestinatarioRepository>(
      () => DestinatarioRepository(
          destinatarioService: sl<DestinatarioService>()),
    )
    ..registerLazySingleton<CreateDestinatarioUseCase>(
      () => CreateDestinatarioUseCase(
          destinatarioRepository: sl<DestinatarioRepository>()),
    )
    ..registerLazySingleton<GetDestinatariosUseCase>(
      () => GetDestinatariosUseCase(
          destinatarioRepository: sl<DestinatarioRepository>()),
    )
    ..registerLazySingleton<UpdateDestinatarioUseCase>(
      () => UpdateDestinatarioUseCase(
          destinatarioRepository: sl<DestinatarioRepository>()),
    )
    ..registerLazySingleton<DeleteDestinatarioUseCase>(
      () => DeleteDestinatarioUseCase(
          destinatarioRepository: sl<DestinatarioRepository>()),
    )
    ..registerLazySingleton<DestinatarioBloc>(
      () => DestinatarioBloc(
          createDestinatarioUseCase: sl<CreateDestinatarioUseCase>(),
          deleteDestinatarioUseCase: sl<DeleteDestinatarioUseCase>(),
          getDestinatariosUseCase: sl<GetDestinatariosUseCase>(),
          updateDestinatarioUseCase: sl<UpdateDestinatarioUseCase>()),
    )
    ..registerLazySingleton<TransportRequestService>(
      () => TransportRequestService(databaseHelper: sqliteInstance),
    )
    ..registerLazySingleton<TransportRequestRepository>(
      () => TransportRequestRepository(
          transportRequestService: sl<TransportRequestService>()),
    )
    ..registerLazySingleton<CreateTransportRequestUseCase>(
      () => CreateTransportRequestUseCase(
          transportRequestRepository: sl<TransportRequestRepository>()),
    )
    ..registerLazySingleton<DeleteTransportRequestUseCase>(
      () => DeleteTransportRequestUseCase(
          transportRequestRepository: sl<TransportRequestRepository>()),
    )
    ..registerLazySingleton<UpdateRequestStatusTransportRequestUseCase>(
      () => UpdateRequestStatusTransportRequestUseCase(
          transportRequestRepository: sl<TransportRequestRepository>()),
    )
    ..registerLazySingleton<GetTransportRequestUseCase>(
      () => GetTransportRequestUseCase(
          transportRequestRepository: sl<TransportRequestRepository>()),
    )
    ..registerLazySingleton<TransportRequestBloc>(() => TransportRequestBloc(
        createTransportRequestUseCase: sl<CreateTransportRequestUseCase>(),
        deleteTransportRequestUseCase: sl<DeleteTransportRequestUseCase>(),
        getTransportRequestUseCase: sl<GetTransportRequestUseCase>(),
        updateRequestStatusTransportRequestUseCase:
            sl<UpdateRequestStatusTransportRequestUseCase>()));
}

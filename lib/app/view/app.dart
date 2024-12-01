import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_mercancia_transporte/authentication/state_managament/authentication_cubit/cubit/authentication_cubit.dart';
import 'package:gestion_mercancia_transporte/authentication/state_managament/change_password_bloc/bloc/change_password_bloc.dart';
import 'package:gestion_mercancia_transporte/authentication/state_managament/logout_cubit/cubit/logout_cubit.dart';
import 'package:gestion_mercancia_transporte/authentication/state_managament/sign_in_bloc/bloc/sign_in_bloc.dart';
import 'package:gestion_mercancia_transporte/destinatario/state_managament/bloc/destinatario_bloc.dart';
import 'package:gestion_mercancia_transporte/synchronization/state_management/synchronization_cubit/cubit/synchronization_cubit.dart';
import 'package:gestion_mercancia_transporte/transport_request/state_managament/bloc/transport_request_bloc.dart';

import '../../authentication/state_managament/sign_up_bloc/bloc/sign_up_bloc.dart';
import '../../boostrap.dart';
import '../routes/router/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider.value(value: sl<AuthenticationCubit>()),
      BlocProvider.value(value: sl<LogoutCubit>()),
      BlocProvider.value(value: sl<SignInBloc>()),
      BlocProvider.value(
        value: sl<SignUpBloc>(),
      ),
      BlocProvider.value(
        value: sl<ChangePasswordBloc>(),
      ),
      BlocProvider.value(
        value: sl<DestinatarioBloc>(),
      ),
      BlocProvider.value(
        value: sl<TransportRequestBloc>(),
      ),
      BlocProvider.value(
        value: sl<SynchronizationCubit>(),
      ),
    ], child: const AppView());
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter =
        AppRouter(authenticationCubit: context.read<AuthenticationCubit>());

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
    );
  }
}

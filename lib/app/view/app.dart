import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_mercancia_transporte/authentication/state_managament/change_password_bloc/bloc/change_password_bloc.dart';
import 'package:gestion_mercancia_transporte/authentication/state_managament/sign_in_bloc/bloc/sign_in_bloc.dart';
import 'package:gestion_mercancia_transporte/destinatario/state_managament/bloc/destinatario_bloc.dart';
import 'package:gestion_mercancia_transporte/transport_request/state_managament/bloc/transport_request_bloc.dart';

import '../../authentication/state_managament/sign_up_bloc/bloc/sign_up_bloc.dart';
import '../../boostrap.dart';
import '../routes/guards/auth_guards.dart';
import '../routes/router/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => sl<SignInBloc>()),
      BlocProvider(
        create: (context) => sl<SignUpBloc>(),
      ),
      BlocProvider(
        create: (context) => sl<ChangePasswordBloc>(),
      ),
      BlocProvider(
        create: (context) => sl<DestinatarioBloc>(),
      ),
      BlocProvider(
        create: (context) => sl<TransportRequestBloc>(),
      ),
    ], child: const AppView());
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter(authGuard: AuthGuard(true)
        // authenticationCubit: context.read<AuthenticationCubit>(),
        );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../routes/guards/auth_guards.dart';
import '../routes/router/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [], child: AppView());
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
      routerConfig: appRouter.config(),
    );
  }
}

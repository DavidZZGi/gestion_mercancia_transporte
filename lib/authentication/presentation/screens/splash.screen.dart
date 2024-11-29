import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/routes/router/app_router.gr.dart';
import '../../state_managament/authentication_cubit/cubit/authentication_cubit.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authCubit = context.read<AuthenticationCubit>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final isAuthenticated = authCubit.isAuthenticated();
      if (isAuthenticated) {
        // Usuario autenticado, ir a la pantalla principal
        context.router.replace(const HomeRoute());
      } else {
        // Usuario no autenticado, ir al login
        context.router.replace(SignInRoute());
      }
    });

    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

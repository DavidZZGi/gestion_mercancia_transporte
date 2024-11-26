import 'package:auto_route/auto_route.dart';

import '../router/app_router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  final bool isAuthenticated;

  AuthGuard(this.isAuthenticated);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (isAuthenticated) {
      resolver.next(); // Permitir la navegación
    } else {
      router.push(SignInRoute()); // Redirigir a SignIn si no autenticado
    }
  }
}

import 'package:auto_route/auto_route.dart';

import '../guards/auth_guards.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  AppRouter({required this.authGuard});

  final AuthGuard authGuard;

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SignUpRoute.page,
          path: '/sign-up',
        ),
        AutoRoute(
          initial: true,
          page: SignInRoute.page,
          path: '/sign-in',
        ),
        AutoRoute(
          page: DestinatariosRoute.page,
          path: '/destinatario',
        ),
        AutoRoute(
          page: HomeRoute.page,
          path: '/home',
        ),
        AutoRoute(
          page: TransportRequestRoute.page,
          path: '/transport_request',
        ),
        AutoRoute(
          page: QrScannerRoute.page,
          path: '/qr-code',
        ),
      ];
}

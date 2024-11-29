import 'package:auto_route/auto_route.dart';

import '../../../authentication/state_managament/authentication_cubit/cubit/authentication_cubit.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  AppRouter({
    required AuthenticationCubit authenticationCubit,
  });

  @override
  List<AutoRoute> get routes => [
        /// Unauthenticated routes go here
        AutoRoute(
          page: SignUpRoute.page,
          path: '/sign-up',
        ),
        AutoRoute(
          page: SignInRoute.page,
          path: '/sign-in',
        ),
        AutoRoute(
          initial: true,
          page: SplashRoute.page,
          path: '/splash',
        ),

        ///Routes go here
        AutoRoute(
          page: HomeRoute.page,
          path: '/home',
        ),
        AutoRoute(
          page: TransportRequestRoute.page,
          path: '/transport_request',
        ),
        AutoRoute(
          page: DestinatariosRoute.page,
          path: '/destinatario',
        ),
        AutoRoute(
          page: QrScannerRoute.page,
          path: '/qr-code',
        ),
      ];
}

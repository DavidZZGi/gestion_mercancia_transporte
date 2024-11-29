// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:gestion_mercancia_transporte/app/view/homepage.dart' as _i1;
import 'package:gestion_mercancia_transporte/app/view/qr_scanner.dart' as _i2;
import 'package:gestion_mercancia_transporte/authentication/presentation/screens/sign_in.dart'
    as _i5;
import 'package:gestion_mercancia_transporte/authentication/presentation/screens/sign_up.dart'
    as _i6;
import 'package:gestion_mercancia_transporte/authentication/presentation/screens/splash.screen.dart'
    as _i7;
import 'package:gestion_mercancia_transporte/destinatario/presentation/screens/destinatarios_screen.dart'
    as _i4;
import 'package:gestion_mercancia_transporte/transport_request/presentation/screens/transport_request_screen.dart'
    as _i3;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    QrScannerRoute.name: (routeData) {
      final args = routeData.argsAs<QrScannerRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.QrScannerPage(
          key: args.key,
          onScanComplete: args.onScanComplete,
        ),
      );
    },
    TransportRequestRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.TransportRequestPage(),
      );
    },
    DestinatariosRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.DestinatariosScreen(),
      );
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>(
          orElse: () => const SignInRouteArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.SignInScreen(key: args.key),
      );
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>(
          orElse: () => const SignUpRouteArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.SignUpScreen(key: args.key),
      );
    },
    SplashRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.QrScannerPage]
class QrScannerRoute extends _i8.PageRouteInfo<QrScannerRouteArgs> {
  QrScannerRoute({
    _i9.Key? key,
    required dynamic Function(String) onScanComplete,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          QrScannerRoute.name,
          args: QrScannerRouteArgs(
            key: key,
            onScanComplete: onScanComplete,
          ),
          initialChildren: children,
        );

  static const String name = 'QrScannerRoute';

  static const _i8.PageInfo<QrScannerRouteArgs> page =
      _i8.PageInfo<QrScannerRouteArgs>(name);
}

class QrScannerRouteArgs {
  const QrScannerRouteArgs({
    this.key,
    required this.onScanComplete,
  });

  final _i9.Key? key;

  final dynamic Function(String) onScanComplete;

  @override
  String toString() {
    return 'QrScannerRouteArgs{key: $key, onScanComplete: $onScanComplete}';
  }
}

/// generated route for
/// [_i3.TransportRequestPage]
class TransportRequestRoute extends _i8.PageRouteInfo<void> {
  const TransportRequestRoute({List<_i8.PageRouteInfo>? children})
      : super(
          TransportRequestRoute.name,
          initialChildren: children,
        );

  static const String name = 'TransportRequestRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.DestinatariosScreen]
class DestinatariosRoute extends _i8.PageRouteInfo<void> {
  const DestinatariosRoute({List<_i8.PageRouteInfo>? children})
      : super(
          DestinatariosRoute.name,
          initialChildren: children,
        );

  static const String name = 'DestinatariosRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SignInScreen]
class SignInRoute extends _i8.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          SignInRoute.name,
          args: SignInRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i8.PageInfo<SignInRouteArgs> page =
      _i8.PageInfo<SignInRouteArgs>(name);
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.SignUpScreen]
class SignUpRoute extends _i8.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          SignUpRoute.name,
          args: SignUpRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i8.PageInfo<SignUpRouteArgs> page =
      _i8.PageInfo<SignUpRouteArgs>(name);
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

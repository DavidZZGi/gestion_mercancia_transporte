import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gestion_mercancia_transporte/app/dependency_inyection/init_config.dart';
import 'package:get_it/get_it.dart';

/// Global instance of [GetIt] service locator.
GetIt sl = GetIt.I;
Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();
  await initCore(sl);

  runApp(await builder());
}

import 'package:flutter/material.dart';
import 'app/view/app.dart';

Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await configureDependencies();

  runApp(
    const MyApp(),
  );
}

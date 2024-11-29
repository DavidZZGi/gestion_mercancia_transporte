import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../widgets/auth_widgets.dart';

@RoutePage()
class SignUpScreen extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController repeatPassword = TextEditingController();
  final TextEditingController username = TextEditingController();
  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SignUpBody(
            username: username,
            email: email,
            password: password,
            repeatPassword: repeatPassword));
  }
}

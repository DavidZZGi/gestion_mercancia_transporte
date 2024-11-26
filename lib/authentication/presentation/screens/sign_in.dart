import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gestion_mercancia_transporte/app/global/global_text.dart';

import '../../../app/utils/style/style.dart';
import '../widgets/auth_widgets.dart';

@RoutePage()
class SignInScreen extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const LoginHeader(),
            CustomTextfield(
                label: emailText,
                textInputType: TextInputType.text,
                textController: email,
                hint: emailHintFormText),
            const SizedBox(
              height: 10,
            ),
            CustomTextfield(
                label: passwordText,
                textInputType: TextInputType.visiblePassword,
                textController: password,
                hint: passwordHintText),
            const SizedBox(
              height: 35,
            ),
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.red)),
                onPressed: () {
                  //     context.router.navigate(const FeedRoute());
                },
                child: const Text(
                  'Acceder',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 16),
                )),
            const SizedBox(
              height: 10,
            ),
            const Text(
              noaccount,
              style: Style.textTitleMedium,
            ),
            TextButton(
                onPressed: () {
                  //    context.router.navigate(SignUpRoute());
                },
                child: const Text(
                  'Regístarte',
                  style: Style.textBodyMedium,
                ))
          ],
        ),
      ),
    );
  }
}

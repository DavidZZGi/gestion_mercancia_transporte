import 'package:flutter/material.dart';

import '../../../app/global/app_texts/global_text.dart';
import '../../../app/utils/style/style.dart';
import 'auth_widgets.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({
    super.key,
    required this.email,
    required this.password,
    required this.repeatPassword,
  });

  final TextEditingController email;
  final TextEditingController password;
  final TextEditingController repeatPassword;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
              height: 10,
            ),
            CustomTextfield(
                label: repaetpasswordText,
                textInputType: TextInputType.text,
                textController: repeatPassword,
                hint: nameHintText),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.red)),
                onPressed: () {},
                child: const Text(
                  'Registrate',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 16),
                )),
            const SizedBox(
              height: 10,
            ),
            const Text(
              account,
              style: Style.textTitleMedium,
            ),
            TextButton(
                onPressed: () {
                  //    context.router.navigate(SignInRoute());
                },
                child: const Text(
                  'Iniciar Sesión',
                  style: Style.textBodyMedium,
                ))
          ],
        ),
      ),
    );
  }
}

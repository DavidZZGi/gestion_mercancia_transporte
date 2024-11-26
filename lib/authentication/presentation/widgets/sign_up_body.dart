import 'package:flutter/material.dart';

import '../../../app/global/global_text.dart';
import '../../../app/utils/style/style.dart';
import 'auth_widgets.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({
    super.key,
    required this.email,
    required this.password,
    required this.name,
  });

  final TextEditingController email;
  final TextEditingController password;
  final TextEditingController name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const LoginHeader(),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.white)),
              onPressed: () {},
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [],
              )),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Or',
            style: Style.textTitleMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(padding: EdgeInsets.all(4), child: Divider()),
          const SizedBox(
            height: 10,
          ),
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
              label: nameText,
              textInputType: TextInputType.text,
              textController: name,
              hint: nameHintText),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red)),
              onPressed: () {},
              child: const Text(
                'Sign Up',
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
                'Login',
                style: Style.textBodyMedium,
              ))
        ],
      ),
    );
  }
}

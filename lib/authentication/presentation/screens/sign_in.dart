import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../app/utils/style/style.dart';
import '../widgets/aut_widgets.dart';

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
            const SizedBox(
              height: 20,
            ),
            CustomTextfield(
                label: '',
                textInputType: TextInputType.text,
                textController: email,
                hint: ''),
            const SizedBox(
              height: 10,
            ),
            CustomTextfield(
                label: '',
                textInputType: TextInputType.visiblePassword,
                textController: password,
                hint: ''),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.red)),
                onPressed: () {
                  //     context.router.navigate(const FeedRoute());
                },
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 16),
                )),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Do not have an account',
              style: Style.textTitleMedium,
            ),
            TextButton(
                onPressed: () {
                  //    context.router.navigate(SignUpRoute());
                },
                child: const Text(
                  'Sign Up',
                  style: Style.textBodyMedium,
                ))
          ],
        ),
      ),
    );
  }
}

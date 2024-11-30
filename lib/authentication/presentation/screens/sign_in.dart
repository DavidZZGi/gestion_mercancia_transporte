import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_mercancia_transporte/app/global/constants/constants.dart';
import 'package:gestion_mercancia_transporte/authentication/state_managament/sign_in_bloc/bloc/sign_in_bloc.dart';

import '../../../app/routes/router/app_router.gr.dart';
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: BlocListener<SignInBloc, SignInState>(
          listener: (context, state) {
            state.when(
              initial: () {},
              loading: () => const CircularProgressIndicator.adaptive(),
              success: (user) {
                print(user);
                context.router.navigate(const HomeRoute());
              },
              error: (message) => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('email o contraseña incorrectos')),
              ),
            );
          },
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
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Theme.of(context).primaryColor)),
                  onPressed: () {
                    if (email.text.isNotEmpty && password.text.isNotEmpty) {
                      context.read<SignInBloc>().add(SignInEvent.signIn(
                          username: email.text, password: password.text));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content:
                                Text('Por favor completa todos los campos')),
                      );
                    }
                  },
                  child: const Text(
                    'Iniciar Sesión',
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
                    context.router.navigate(SignUpRoute());
                  },
                  child: const Text(
                    'Regístarte',
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_mercancia_transporte/app/routes/router/app_router.gr.dart';
import 'package:gestion_mercancia_transporte/authentication/authentication_repository/models/user.dart';
import 'package:gestion_mercancia_transporte/authentication/state_managament/sign_up_bloc/bloc/sign_up_bloc.dart';

import '../../../app/global/app_texts/global_text.dart';
import '../../../app/utils/style/style.dart';
import 'auth_widgets.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody(
      {super.key,
      required this.email,
      required this.password,
      required this.repeatPassword,
      required this.username});

  final TextEditingController email;
  final TextEditingController password;
  final TextEditingController repeatPassword;
  final TextEditingController username;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        state.when(
            initial: () {},
            loading: () => const CircularProgressIndicator.adaptive(),
            success: (user) {
              print(user);

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text('Usuario creado satisfactoriamente')),
              );

              context.router.navigate(SignInRoute());
            },
            error: (error) => ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(error)),
                ));
      },
      child: Padding(
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
                  label: 'Username',
                  textInputType: TextInputType.text,
                  textController: username,
                  hint: userlHintFormText),
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
                  hint: repaetpasswordText),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Theme.of(context).primaryColor)),
                  onPressed: () {
                    if (repeatPassword.text.isEmpty ||
                        password.text.isEmpty ||
                        email.text.isEmpty ||
                        username.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Hay campos sin llenar')),
                      );
                    } else if (repeatPassword.text.trim() !=
                        password.text.trim()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Las contraseñas no coinciden')),
                      );
                    } else {
                      context.read<SignUpBloc>().add(SignUpEvent.signUp(
                          user: User(
                              username: username.text,
                              email: email.text,
                              passwordHash: password.text)));
                    }
                  },
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
                    context.router.replace(SignInRoute());
                  },
                  child: const Text(
                    'Iniciar Sesión',
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

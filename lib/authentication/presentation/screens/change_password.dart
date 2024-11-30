import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_mercancia_transporte/app/utils/app_preferences.dart';
import 'package:gestion_mercancia_transporte/authentication/state_managament/change_password_bloc/bloc/change_password_bloc.dart';

import '../../../app/routes/router/app_router.gr.dart';
import '../widgets/auth_widgets.dart';

@RoutePage()
class ChangePasswordPage extends StatelessWidget {
  ChangePasswordPage({super.key});

  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _prefs = AppPreferences();

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChangePasswordBloc, ChangePasswordState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () {
            // Muestra un indicador de carga si es necesario
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Cambiando contraseña...'),
              ),
            );
          },
          success: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Contraseña cambiada con éxito'),
                backgroundColor: Colors.green,
              ),
            );
            context.router.replace(const HomeRoute());
          },
          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
                backgroundColor: Colors.red,
              ),
            );
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'Cambiar Contraseña',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 16),
                CustomTextfield(
                  label: 'Nueva Contraseña',
                  hint: 'Introduce una nueva contraseña',
                  textInputType: TextInputType.text,
                  textController: _newPasswordController,
                ),
                const SizedBox(height: 16),
                CustomTextfield(
                  label: 'Confirmar Contraseña',
                  hint: 'Confirma tu nueva contraseña',
                  textInputType: TextInputType.text,
                  textController: _confirmPasswordController,
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      if (_newPasswordController.text !=
                          _confirmPasswordController.text) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Las contraseñas no coinciden'),
                            backgroundColor: Colors.red,
                          ),
                        );
                        return;
                      }

                      // Disparar evento para cambiar contraseña
                      context.read<ChangePasswordBloc>().add(
                            ChangePasswordEvent.changePassword(
                              userId: _prefs.getUserId()!,
                              newPassword: _confirmPasswordController.text,
                            ),
                          );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  child: const Text(
                    'Guardar Cambios',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

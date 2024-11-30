import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_mercancia_transporte/app/routes/router/app_router.gr.dart';
import 'package:gestion_mercancia_transporte/authentication/state_managament/logout_cubit/cubit/logout_cubit.dart';

import '../global/components/custom_dialos.dart';
import '../utils/internet_connection_cheker.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LogoutCubit, LogoutState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          success: () => context.router.replace(SignInRoute()),
          error: (e) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(e)),
            );
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).primaryColor,
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.dashboard,
                  size: 35,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Transporte de Mercancías',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Gestiona tus operaciones ',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              onPressed: () async {
                final hasInternet = await ConnectivityHelper.hasInternet();
                if (!hasInternet) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('No hay conexión a Internet')),
                  );
                  return;
                }

                /*  try {
            
                  // Sincronización de datos
               final userRepository = UserRepository();
               final recipientRepository = RecipientRepository();
                  final transportRequestRepository =
                      TransportRequestRepository();
            
                  // Llamadas de sincronización
                  final users = await userRepository.fetchUsers();
                  final recipients =
                      await recipientRepository.fetchRecipients();
                  final requests =
                      await transportRequestRepository.fetchRequests();
            
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Sincronización completada:\nUsuarios: ${users.length}, '
                        'Destinatarios: ${recipients.length}, '
                        'Solicitudes: ${requests.length}',
                      ),
                    ),
                  );
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Error al sincronizar: $e')),
                  );
                }
            
            */
              },
              icon: const Icon(Icons.sync, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                showLogoutDialog(
                    context, () => context.read<LogoutCubit>().logOut());
              },
              icon: const Icon(Icons.logout, color: Colors.white),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Seleccione una opción:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              _NavigationCard(
                title: 'Gestión de Destinatarios',
                description: 'Administra los destinatarios registrados.',
                icon: Icons.people,
                onTap: () => context.router.push(const DestinatariosRoute()),
              ),
              const SizedBox(height: 16),
              _NavigationCard(
                title: 'Gestión de Solicitudes de Transporte',
                description: 'Administra las solicitudes de transporte.',
                icon: Icons.local_shipping,
                onTap: () => context.router.push(const TransportRequestRoute()),
              ),
              const SizedBox(height: 16),
              _NavigationCard(
                title: 'Cambiar Contraseña',
                description: 'Actualiza la contraseña de tu cuenta.',
                icon: Icons.lock_reset,
                onTap: () => context.router.push(ChangePasswordRoute()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavigationCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final VoidCallback onTap;

  const _NavigationCard({
    required this.title,
    required this.description,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(
                icon,
                size: 48,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, size: 24, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}

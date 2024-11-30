import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_mercancia_transporte/destinatario/presentation/widgets/destinatario_form.dart';
import 'package:gestion_mercancia_transporte/destinatario/state_managament/bloc/destinatario_bloc.dart';

import '../../../app/routes/router/app_router.gr.dart';
import '../widgets/destinatario_list.dart';

@RoutePage()
class DestinatariosScreen extends StatelessWidget {
  const DestinatariosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestión de Destinatarios'),
        actions: [
          IconButton(
            icon: const Icon(Icons.qr_code_scanner),
            onPressed: () {
              context.router.push(QrScannerRoute(onScanComplete: (qrCode) {
                context
                    .read<DestinatarioBloc>()
                    .add(DestinatarioEvent.scanQr(qrCode));
              }));
            },
          ),
        ],
      ),
      body: BlocBuilder<DestinatarioBloc, DestinatarioState>(
        builder: (context, state) {
          print('DestinatarioBloc: $state');
          return state.when(
            initial: () {
              context
                  .read<DestinatarioBloc>()
                  .add(const DestinatarioEvent.getAll());
              return const SizedBox.shrink();
            }
            // const Center(child: Text('No hay destinatarios disponibles'))
            ,
            loading: () =>
                const Center(child: CircularProgressIndicator.adaptive()),
            loaded: (recipients) {
              if (recipients.isEmpty) {
                return const Center(
                  child: Text('No hay destinatarios registrados'),
                );
              } else {
                return DestinatarioList(destinatarios: recipients);
              }
            },
            error: (message) {
              return Center(
                child: Text(message),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => DestinatarioForm(
              onSubmit: (recipient) {
                context
                    .read<DestinatarioBloc>()
                    .add(DestinatarioEvent.add(destinatario: recipient));
              },
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_mercancia_transporte/transport_request/state_managament/bloc/transport_request_bloc.dart';
import '../widgets/transport_request_widgets.dart';

@RoutePage()
class TransportRequestPage extends StatelessWidget {
  const TransportRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestión de Solicitudes'),
        actions: [
          IconButton(
            icon: const Icon(Icons.qr_code_scanner),
            onPressed: () {
              // Acción para escanear destinatario con QR
            },
          ),
        ],
      ),
      body: BlocBuilder<TransportRequestBloc, TransportRequestState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('Cargando solicitudes...')),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (requests) => TransportRequestList(
              requests: requests,
            ),
            error: (message) => Center(child: Text('Error: $message')),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => TransportRequestFormDialog(
              onSubmit: (request) {
                context.read<TransportRequestBloc>().add(
                      TransportRequestEvent.add(request),
                    );
              },
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

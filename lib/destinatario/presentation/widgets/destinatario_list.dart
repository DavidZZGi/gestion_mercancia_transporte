import 'package:flutter/material.dart';
import 'package:gestion_mercancia_transporte/destinatario/destinatario_ropository/models/destinatario.dart';

import 'destinatario_widget.dart';

class DestinatarioList extends StatelessWidget {
  final List<Destinatario> destinatarios;

  const DestinatarioList({super.key, required this.destinatarios});

  @override
  Widget build(BuildContext context) {
    if (destinatarios.isEmpty) {
      return const Center(child: Text('No hay destinatarios registrados.'));
    }

    return ListView.builder(
      itemCount: destinatarios.length,
      itemBuilder: (context, index) {
        final destinatario = destinatarios[index];
        return DestinatarioListItem(destinatario: destinatario);
      },
    );
  }
}

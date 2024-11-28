import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_mercancia_transporte/destinatario/destinatario_ropository/models/destinatario.dart';

import 'package:gestion_mercancia_transporte/destinatario/state_managament/bloc/destinatario_bloc.dart';

import 'destinatario_form.dart';

class DestinatarioListItem extends StatelessWidget {
  final Destinatario destinatario;

  const DestinatarioListItem({super.key, required this.destinatario});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ListTile(
        leading: CircleAvatar(
          child: Text(destinatario.name[0].toUpperCase()),
        ),
        title: Text(destinatario.name),
        subtitle: Text(destinatario.address),
        trailing: PopupMenuButton<String>(
          onSelected: (value) {
            if (value == 'edit') {
              _showEditDialog(context, destinatario);
            } else if (value == 'delete') {
              _showDeleteConfirmation(context, destinatario.id);
            }
          },
          itemBuilder: (context) => [
            const PopupMenuItem(
              value: 'edit',
              child: Text('Editar'),
            ),
            const PopupMenuItem(
              value: 'delete',
              child: Text('Eliminar'),
            ),
          ],
        ),
      ),
    );
  }

  void _showEditDialog(BuildContext context, Destinatario destinatario) {
    showDialog(
      context: context,
      builder: (_) => DestinatarioForm(
        initialDestinatario: destinatario,
        onSubmit: (updatedRecipient) {
          context
              .read<DestinatarioBloc>()
              .add(DestinatarioEvent.update(destinatario: updatedRecipient));
        },
      ),
    );
  }

  void _showDeleteConfirmation(BuildContext context, int destinatarioId) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Confirmar eliminación'),
        content: const Text('¿Seguro que deseas eliminar este destinatario?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () {
              context
                  .read<DestinatarioBloc>()
                  .add(DestinatarioEvent.delete(id: destinatarioId));
              Navigator.pop(context);
            },
            child: const Text('Eliminar'),
          ),
        ],
      ),
    );
  }
}

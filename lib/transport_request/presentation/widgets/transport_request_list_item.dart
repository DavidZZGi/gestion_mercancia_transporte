import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../state_managament/bloc/transport_request_bloc.dart';
import '../../transport_request_repository/models/transport_request.dart';
import 'transport_request_form.dart';

class TransportRequestListItem extends StatelessWidget {
  final TransportRequest request;

  const TransportRequestListItem({super.key, required this.request});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ListTile(
        leading: Icon(
          _getIconForStatus(request.status.name),
          color: _getColorForStatus(request.status.name),
        ),
        title: Text(request.destinationName),
        subtitle: Text('Estado: ${request.status.name}'),
        trailing: PopupMenuButton<String>(
          onSelected: (value) {
            if (value == 'edit') {
              _showEditDialog(context, request);
            } else if (value == 'delete') {
              _showDeleteConfirmation(context, request.id!);
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

  IconData _getIconForStatus(String status) {
    switch (status) {
      case 'Preparando':
        return Icons.pending;
      case 'Trasladándose':
        return Icons.local_shipping;
      case 'Entregada':
        return Icons.check_circle;
      default:
        return Icons.error;
    }
  }

  Color _getColorForStatus(String status) {
    switch (status) {
      case 'Preparando':
        return Colors.orange;
      case 'Trasladándose':
        return Colors.blue;
      case 'Entregada':
        return Colors.green;
      default:
        return Colors.red;
    }
  }

  void _showEditDialog(BuildContext context, TransportRequest request) {
    showDialog(
      context: context,
      builder: (_) => TransportRequestFormDialog(
        initialRequest: request,
        onSubmit: (updatedRequest) {
          context.read<TransportRequestBloc>().add(
                TransportRequestEvent.update(updatedRequest),
              );
        },
      ),
    );
  }

  void _showDeleteConfirmation(BuildContext context, int requestId) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Confirmar eliminación'),
        content: const Text('¿Seguro que deseas eliminar esta solicitud?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () {
              context.read<TransportRequestBloc>().add(
                    TransportRequestEvent.delete(requestId),
                  );
              Navigator.pop(context);
            },
            child: const Text('Eliminar'),
          ),
        ],
      ),
    );
  }
}

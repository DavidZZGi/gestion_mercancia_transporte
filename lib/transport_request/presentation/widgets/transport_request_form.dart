import 'package:flutter/material.dart';
import 'package:gestion_mercancia_transporte/app/utils/app_preferences.dart';

import '../../transport_request_repository/models/transport_request.dart';

class TransportRequestFormDialog extends StatefulWidget {
  final TransportRequest? initialRequest;
  final Function(TransportRequest) onSubmit;

  const TransportRequestFormDialog({
    super.key,
    this.initialRequest,
    required this.onSubmit,
  });

  @override
  State<TransportRequestFormDialog> createState() =>
      _TransportRequestFormDialogState();
}

class _TransportRequestFormDialogState
    extends State<TransportRequestFormDialog> {
  final _formKey = GlobalKey<FormState>();
  late String _destinationName;
  late RequestStatus _status;
  final _prefs = AppPreferences();

  @override
  void initState() {
    super.initState();
    _destinationName = widget.initialRequest?.destinationName ?? '';
    _status = widget.initialRequest?.status ?? RequestStatus.preparing;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.initialRequest == null
          ? 'Nueva Solicitud'
          : 'Editar Solicitud'),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              initialValue: _destinationName,
              decoration: const InputDecoration(labelText: 'Destino'),
              validator: (value) =>
                  value == null || value.isEmpty ? 'Campo requerido' : null,
              onSaved: (value) => _destinationName = value!,
            ),
            DropdownButtonFormField<String>(
              value: _status.name,
              items: ['Preparando', 'Trasladándose', 'Entregada']
                  .map((status) =>
                      DropdownMenuItem(value: status, child: Text(status)))
                  .toList(),
              decoration: const InputDecoration(labelText: 'Estado'),
              onChanged: (value) {
                if (_status.name == value) {
                  _status.name == value;
                }
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: _submitForm,
          child: const Text('Guardar'),
        ),
      ],
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final request = TransportRequest(
        userId: _prefs.getUserId()!,
        recipientId: 0,
        id: widget.initialRequest?.id ?? 0,
        destinationName: _destinationName,
        status: _status,
      );
      widget.onSubmit(request);
      Navigator.pop(context);
    }
  }
}

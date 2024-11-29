import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_mercancia_transporte/app/utils/app_preferences.dart';
import '../../../destinatario/state_managament/bloc/destinatario_bloc.dart';
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
  late int? _selectedRecipientId;
  late RequestStatus _status;
  late String? _notes; // Nuevo campo
  final _prefs = AppPreferences();

  @override
  void initState() {
    super.initState();
    _selectedRecipientId = widget.initialRequest?.recipientId;
    _status = widget.initialRequest?.status ?? RequestStatus.preparando;
    _notes = widget.initialRequest?.notes; // Inicializar notas

    // Cargar destinatarios del Bloc
    context.read<DestinatarioBloc>().add(const DestinatarioEvent.getAll());
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.initialRequest == null
          ? 'Nueva Solicitud'
          : 'Editar Solicitud'),
      content: BlocBuilder<DestinatarioBloc, DestinatarioState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            error: (e) => Text('Error: $e'),
            loading: () => const CircularProgressIndicator.adaptive(),
            loaded: (destinatarios) {
              if (destinatarios.isEmpty) {
                return const Text(
                    'No hay destinatarios disponibles. Por favor, cree uno primero.');
              }
              return Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    DropdownButtonFormField<int>(
                      value: _selectedRecipientId,
                      decoration:
                          const InputDecoration(labelText: 'Destinatario'),
                      items: destinatarios
                          .map(
                            (destinatario) => DropdownMenuItem<int>(
                              value: destinatario.id,
                              child: Text(destinatario.name),
                            ),
                          )
                          .toList(),
                      validator: (value) => value == null
                          ? 'Por favor selecciona un destinatario'
                          : null,
                      onChanged: (value) => setState(() {
                        _selectedRecipientId = value;
                      }),
                    ),
                    DropdownButtonFormField<RequestStatus>(
                      value: _status,
                      decoration: const InputDecoration(labelText: 'Estado'),
                      items: RequestStatus.values
                          .map(
                            (status) => DropdownMenuItem<RequestStatus>(
                              value: status,
                              child: Text(_mapStatusToText(status)),
                            ),
                          )
                          .toList(),
                      onChanged: (value) => setState(() {
                        _status = value!;
                      }),
                    ),
                    TextFormField(
                      initialValue: _notes,
                      decoration: const InputDecoration(labelText: 'Notas'),
                      maxLines: 3,
                      onSaved: (value) => _notes = value,
                    ),
                  ],
                ),
              );
            },
          );
        },
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
        recipientId: _selectedRecipientId!,
        id: widget.initialRequest?.id ?? 0,
        status: _status,
        notes: _notes, // Guardar notas
        createdAt: widget.initialRequest?.createdAt ?? DateTime.now(),
      );

      widget.onSubmit(request);
      Navigator.pop(context);
    }
  }

  String _mapStatusToText(RequestStatus status) {
    switch (status) {
      case RequestStatus.preparando:
        return 'Preparando';
      case RequestStatus.trasladandose:
        return 'Trasladándose';
      case RequestStatus.entregada:
        return 'Entregada';
      default:
        return '';
    }
  }
}

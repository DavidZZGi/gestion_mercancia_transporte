import 'package:flutter/material.dart';
import 'package:gestion_mercancia_transporte/app/utils/app_preferences.dart';
import 'package:gestion_mercancia_transporte/destinatario/destinatario_ropository/models/destinatario.dart';

class DestinatarioForm extends StatefulWidget {
  final Destinatario? initialDestinatario;
  final Function(Destinatario) onSubmit;

  const DestinatarioForm({
    super.key,
    this.initialDestinatario,
    required this.onSubmit,
  });

  @override
  State<DestinatarioForm> createState() => _DestinatarioFormState();
}

class _DestinatarioFormState extends State<DestinatarioForm> {
  final _formKey = GlobalKey<FormState>();
  late String _name;
  late String _address;
  late String _phone;
  final _pref = AppPreferences();
  @override
  void initState() {
    super.initState();
    _name = widget.initialDestinatario?.name ?? '';
    _address = widget.initialDestinatario?.address ?? '';
    _phone = widget.initialDestinatario?.phone ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.initialDestinatario == null
          ? 'Nuevo Destinatario'
          : 'Editar Destinatario'),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              initialValue: _name,
              decoration: const InputDecoration(labelText: 'Nombre'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Campo requerido';
                }
                if (!RegExp(r"^[a-zA-Z\s]+$").hasMatch(value)) {
                  return 'El nombre solo debe contener letras';
                }
                return null;
              },
              onSaved: (value) => _name = value!,
            ),
            TextFormField(
              initialValue: _address,
              decoration: const InputDecoration(labelText: 'Dirección'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Campo requerido';
                }
                return null;
              },
              onSaved: (value) => _address = value!,
            ),
            TextFormField(
              initialValue: _phone,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(labelText: 'Teléfono'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Campo requerido';
                }
                if (!RegExp(r"^\d+$").hasMatch(value)) {
                  return 'El teléfono solo debe contener números';
                }
                return null;
              },
              onSaved: (value) => _phone = value!,
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

      final recipient = Destinatario(
        userId: _pref.getUserId()!,
        id: widget.initialDestinatario?.id,
        name: _name,
        address: _address,
        phone: _phone,
      );

      widget.onSubmit(recipient);
      Navigator.pop(context);
    }
  }
}

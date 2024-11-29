import 'package:flutter/material.dart';

class ConfirmationDialog extends StatelessWidget {
  final String title;
  final String content;
  final String confirmButtonText;
  final String cancelButtonText;
  final IconData icon;
  final VoidCallback onConfirm;
  final VoidCallback? onCancel;

  const ConfirmationDialog({
    super.key,
    required this.title,
    required this.content,
    required this.onConfirm,
    this.onCancel,
    this.confirmButtonText = 'Confirm',
    this.cancelButtonText = 'Cancel',
    this.icon = Icons.info_outline,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 40,
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              content,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 207, 207, 207),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    onCancel?.call();
                    Navigator.maybePop(
                        context); // Usar maybePop para cerrar el diálogo
                  },
                  child: Text(cancelButtonText,
                      style: const TextStyle(color: Colors.black)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    onConfirm();
                    Navigator.maybePop(
                        context); // Usar maybePop para cerrar el diálogo
                  },
                  child: Text(
                    confirmButtonText,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Mostrar diálogos de confirmación
showLogoutDialog(BuildContext context, VoidCallback onConfirm) {
  showDialog(
    context: context,
    builder: (BuildContext dialogContext) {
      return ConfirmationDialog(
        title: 'Cerrar Sesión',
        content: 'Estás seguro que quieres cerrar sesióņ?',
        confirmButtonText: 'Ok',
        icon: Icons.logout,
        onConfirm: onConfirm,
        onCancel: () =>
            Navigator.maybePop(dialogContext), // Intentar cerrar el diálogo
      );
    },
  );
}

showUpdateDialog(
    BuildContext context, String entityName, VoidCallback onConfirm) {
  showDialog(
    context: context,
    builder: (BuildContext dialogContext) {
      return ConfirmationDialog(
        title: 'Actualizar $entityName',
        content: 'Estás seguro que quieres modificar esta $entityName?',
        confirmButtonText: 'Actualizar',
        icon: Icons.edit_outlined,
        onConfirm: onConfirm,
        onCancel: () =>
            Navigator.maybePop(dialogContext), // Intentar cerrar el diálogo
      );
    },
  );
}

Future<bool?> showDeleteDialog(
    BuildContext context, String entityName, VoidCallback onConfirm) {
  return showDialog<bool>(
    context: context,
    builder: (BuildContext dialogContext) {
      return ConfirmationDialog(
        title: 'Eliminar $entityName',
        content: 'Estás seguro que quieres borrar esta $entityName?',
        confirmButtonText: 'Eliminar',
        icon: Icons.delete_outline,
        onConfirm: onConfirm,
        onCancel: () =>
            Navigator.maybePop(dialogContext), // Intentar cerrar el diálogo
      );
    },
  );
}

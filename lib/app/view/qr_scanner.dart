import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

@RoutePage()
class QrScannerPage extends StatefulWidget {
  final Function(String qrContent) onScanComplete;

  const QrScannerPage({super.key, required this.onScanComplete});

  @override
  State<QrScannerPage> createState() => _QrScannerPageState();
}

class _QrScannerPageState extends State<QrScannerPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  String? errorMessage;

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Escanear Código QR')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (errorMessage != null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                errorMessage!,
                style: const TextStyle(color: Colors.red, fontSize: 16),
              ),
            ),
          Expanded(
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
            ),
          ),
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController qrController) {
    controller = qrController;

    qrController.scannedDataStream.listen((scanData) {
      try {
        // Validar que el contenido del QR tenga el formato correcto
        String qrContent = scanData.code;

        // Aquí asumes que el QR tiene la información de un destinatario
        // La validación puede ser más específica dependiendo del formato del QR
        if (qrContent.isEmpty) {
          throw const FormatException('Contenido de QR inválido');
        }

        // Llamar al callback con el contenido del QR
        widget.onScanComplete(qrContent);

        // Si todo es correcto, cerrar el escáner
        controller?.dispose();
        Navigator.of(context).pop();
      } catch (e) {
        // Manejar el error y mostrar un mensaje de error
        setState(() {
          errorMessage = 'Error al leer el QR: ${e.toString()}';
        });

        // Puedes decidir que hacer, como reintentar el escaneo o volver a intentar
        // También puedes restablecer el estado después de un tiempo
        Future.delayed(const Duration(seconds: 3), () {
          setState(() {
            errorMessage = null;
          });
        });
      }
    });
  }
}

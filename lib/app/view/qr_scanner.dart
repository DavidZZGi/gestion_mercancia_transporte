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
        String qrContent = scanData.code!;
        if (qrContent.isEmpty) {
          throw const FormatException('Contenido de QR inválido');
        }

        // Llamar al callback con el contenido del QR
        widget.onScanComplete(qrContent);
        controller?.dispose();
        Navigator.of(context).pop();
      } catch (e) {
        setState(() {
          errorMessage = 'Error al leer el QR: ${e.toString()}';
        });

        Future.delayed(const Duration(seconds: 3), () {
          setState(() {
            errorMessage = null;
          });
        });
      }
    });
  }
}

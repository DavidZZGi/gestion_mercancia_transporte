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

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Escanear Código QR')),
      body: QRView(
        key: qrKey,
        onQRViewCreated: _onQRViewCreated,
      ),
    );
  }

  void _onQRViewCreated(QRViewController qrController) {
    controller = qrController;
    qrController.scannedDataStream.listen((scanData) {
      widget.onScanComplete(scanData.code);
      controller?.dispose();
      Navigator.of(context).pop();
    });
  }
}

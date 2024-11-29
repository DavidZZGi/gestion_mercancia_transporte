import 'package:gestion_mercancia_transporte/app/core/use_case.dart';

import '../destinatario_ropository/destinatario_repository.dart';

class CreateDestinatarioFromQrUseCase implements UseCase<Future<void>, String> {
  final DestinatarioRepository destinatarioRepository;
  CreateDestinatarioFromQrUseCase({required this.destinatarioRepository});
  @override
  Future<void> call(String params) async =>
      await destinatarioRepository.createDestinatarioFromQr(qrCode: params);
}

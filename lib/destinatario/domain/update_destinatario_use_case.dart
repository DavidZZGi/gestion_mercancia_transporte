import 'package:gestion_mercancia_transporte/app/core/use_case.dart';
import 'package:gestion_mercancia_transporte/destinatario/destinatario_ropository/models/destinatario.dart';

import '../destinatario_ropository/destinatario_repository.dart';

class UpdateDestinatarioUseCase implements UseCase<Future<void>, Destinatario> {
  final DestinatarioRepository destinatarioRepository;
  UpdateDestinatarioUseCase({required this.destinatarioRepository});

  @override
  Future<void> call(Destinatario params) async =>
      await destinatarioRepository.updateDestinatario(destinatario: params);
}

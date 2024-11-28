import 'package:gestion_mercancia_transporte/destinatario/destinatario_ropository/destinatario_repository.dart';

import '../../app/core/use_case.dart';
import '../destinatario_ropository/models/destinatario.dart';

class CreateDestinatarioUseCase implements UseCase<Future<void>, Destinatario> {
  final DestinatarioRepository destinatarioRepository;
  CreateDestinatarioUseCase({required this.destinatarioRepository});

  @override
  Future<void> call(Destinatario params) async =>
      await destinatarioRepository.createDestinatario(destinatario: params);
}

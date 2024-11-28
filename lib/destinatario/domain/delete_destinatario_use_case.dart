import 'package:gestion_mercancia_transporte/app/core/use_case.dart';

import '../destinatario_ropository/destinatario_repository.dart';

class DeleteDestinatarioUseCase implements UseCase<Future<void>, int> {
  final DestinatarioRepository destinatarioRepository;
  DeleteDestinatarioUseCase({required this.destinatarioRepository});

  @override
  Future<void> call(int params) async =>
      await destinatarioRepository.deleteDestinatario(destinatarioId: params);
}

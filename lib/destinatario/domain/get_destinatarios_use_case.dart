import 'package:gestion_mercancia_transporte/app/core/no_params.dart';
import 'package:gestion_mercancia_transporte/app/core/use_case.dart';
import 'package:gestion_mercancia_transporte/destinatario/destinatario_ropository/destinatario_repository.dart';
import 'package:gestion_mercancia_transporte/destinatario/destinatario_ropository/models/destinatario.dart';

class GetDestinatariosUseCase
    implements UseCase<Future<List<Destinatario>>, NoParams> {
  final DestinatarioRepository destinatarioRepository;
  GetDestinatariosUseCase({required this.destinatarioRepository});
  @override
  Future<List<Destinatario>> call(NoParams? params) async =>
      await destinatarioRepository.getAllDestinatarios();
}

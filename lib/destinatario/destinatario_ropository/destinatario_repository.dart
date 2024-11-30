import 'package:gestion_mercancia_transporte/destinatario/destinatario_ropository/models/destinatario.dart';
import 'package:gestion_mercancia_transporte/destinatario/destinatario_ropository/service/destinatario_service.dart';

class DestinatarioRepository {
  final DestinatarioService destinatarioService;
  DestinatarioRepository({required this.destinatarioService});
  Future<List<Destinatario>> getAllDestinatarios() async =>
      await destinatarioService.getAllDestinatarios();
  Future<void> updateDestinatario({required Destinatario destinatario}) async =>
      await destinatarioService.updateDestinatario(destinatario);
  Future<void> deleteDestinatario({required int destinatarioId}) async =>
      await destinatarioService.deleteDestinatario(destinatarioId);
  Future<void> createDestinatario({required Destinatario destinatario}) async =>
      await destinatarioService.createDestinatario(destinatario);
  Future<void> createDestinatarioFromQr({required String qrCode}) async =>
      await destinatarioService.createDestinatarioFromQr(qrCode);
}

import 'package:gestion_mercancia_transporte/destinatario/destinatario_ropository/models/destinatario.dart';

abstract class DestinatarioInterface {
  Future<void> updateDestinatario(Destinatario destinatario);
  Future<List<Destinatario>> getAllDestinatarios(int userId);
  Future<void> createDestinatario(Destinatario destinatario);
  Future<void> deleteDestinatario(int destinatarioId);
  Future<void> createDestinatarioFromQr(String qrContent);
}

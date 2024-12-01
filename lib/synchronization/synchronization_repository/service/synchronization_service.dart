import 'package:gestion_mercancia_transporte/destinatario/destinatario_ropository/service/destinatario_service.dart';
import 'package:gestion_mercancia_transporte/synchronization/synchronization_repository/interface/synchronization_interface.dart';
import 'package:gestion_mercancia_transporte/transport_request/transport_request_repository/service/transport_request_service.dart';

class SynchronizationService implements SynchronizationInterface {
  final TransportRequestService transportRequestService;
  final DestinatarioService destinatarioService;
  SynchronizationService(
      {required this.destinatarioService,
      required this.transportRequestService});
  @override
  Future<void> uploadDataToServer() async {
    try {
      await destinatarioService.uploadDestinatarioToServer();
      await transportRequestService.uploadTransportRequestToServer();
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Future<void> downloadDataFromServer() async {
    try {
      await destinatarioService.downloadDestinatariosFromServer();
      await transportRequestService.fetchTransportRequestsFromServer();
    } catch (e) {
      print(e.toString());
    }
  }
}

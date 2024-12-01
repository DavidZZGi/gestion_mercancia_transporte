import 'package:gestion_mercancia_transporte/destinatario/destinatario_ropository/service/destinatario_service.dart';
import 'package:gestion_mercancia_transporte/synchronization/synchronization_repository/interface/synchronization_interface.dart';
import 'package:gestion_mercancia_transporte/transport_request/transport_request_repository/service/transport_request_service.dart';

/// Lógica de sincronización con el servidor:
/// Este método implementa la funcionalidad de subida (*uploadDataToServer*) de datos
/// locales al servidor. Los datos que se almacenan en la base de datos
/// local (SQLite) se envían al backend en formato JSON, asegurando así
/// su centralización y persistencia.
///
/// Actualmente, la funcionalidad de *downloadDataFromServer* (descarga de datos desde
/// el servidor) esta aqui implementada pero no decidi incluirla en el caso de uso de sincronización.
///
/// Para implementar una lógica completa de sincronización, sería necesario:
/// Agregar autenticación en el backend (Nest.js) para controlar el acceso
/// a los datos, ya que la manera que se iria a llamar este metodo seria q se borrara la app
/// y por consiguiente los datos locales se borrarian y en este caso el server tuviera los datos
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
      throw Exception(e);
    }
  }

  @override
  Future<void> downloadDataFromServer() async {
    try {
      await destinatarioService.downloadDestinatariosFromServer();
      await transportRequestService.downloadTransportRequestsFromServer();
    } catch (e) {
      throw Exception(e);
    }
  }
}

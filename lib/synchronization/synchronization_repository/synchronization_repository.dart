import 'package:gestion_mercancia_transporte/synchronization/synchronization_repository/service/synchronization_service.dart';
import 'package:gestion_mercancia_transporte/transport_request/transport_request_repository/transport_request_repository.dart';

import '../../destinatario/destinatario_ropository/destinatario_repository.dart';

class SynchronizationRepository {
  final SynchronizationService synchronizationService;
  SynchronizationRepository({
    required this.synchronizationService,
  });

  Future<void> uploadDataToServer() async =>
      synchronizationService.uploadDataToServer();
}

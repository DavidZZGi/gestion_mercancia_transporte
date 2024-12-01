import 'package:gestion_mercancia_transporte/synchronization/synchronization_repository/service/synchronization_service.dart';

class SynchronizationRepository {
  final SynchronizationService synchronizationService;
  SynchronizationRepository({
    required this.synchronizationService,
  });

  Future<void> uploadDataToServer() async =>
      synchronizationService.uploadDataToServer();
}

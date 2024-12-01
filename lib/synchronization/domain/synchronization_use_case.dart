import 'package:gestion_mercancia_transporte/app/core/no_params.dart';
import 'package:gestion_mercancia_transporte/app/core/use_case.dart';
import 'package:gestion_mercancia_transporte/synchronization/synchronization_repository/synchronization_repository.dart';

class SynchronizationUseCase implements UseCase<Future<void>, NoParams> {
  final SynchronizationRepository synchronizationRepository;
  SynchronizationUseCase({required this.synchronizationRepository});

  @override
  Future<void> call(NoParams params) async =>
      await synchronizationRepository.uploadDataToServer();
}

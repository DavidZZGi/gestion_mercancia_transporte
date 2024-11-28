import '../../app/core/use_case.dart';
import '../transport_request_repository/transport_request_repository.dart';

class DeleteTransportRequestUseCase implements UseCase<Future<void>, int> {
  final TransportRequestRepository transportRequestRepository;
  DeleteTransportRequestUseCase({required this.transportRequestRepository});

  @override
  Future<void> call(int params) async =>
      await transportRequestRepository.deleteTransportRequest(params);
}

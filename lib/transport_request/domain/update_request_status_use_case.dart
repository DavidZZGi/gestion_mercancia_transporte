import '../../app/core/use_case.dart';
import '../transport_request_repository/models/transport_request.dart';
import '../transport_request_repository/transport_request_repository.dart';

class UpdateRequestStatusTransportRequestUseCase
    implements UseCase<Future<void>, TransportRequest> {
  final TransportRequestRepository transportRequestRepository;
  UpdateRequestStatusTransportRequestUseCase(
      {required this.transportRequestRepository});

  @override
  Future<void> call(TransportRequest transportRequest) async =>
      await transportRequestRepository.updateRequestStatus(transportRequest);
}

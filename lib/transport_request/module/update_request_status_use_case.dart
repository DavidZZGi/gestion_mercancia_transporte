import '../../app/core/use_case.dart';
import '../transport_request_repository/transport_request_repository.dart';
import 'param_models/update_request_status_params.dart';

class UpdateRequestStatusTransportRequestUseCase
    implements UseCase<Future<void>, UpdateRequestStatusParams> {
  final TransportRequestRepository transportRequestRepository;
  UpdateRequestStatusTransportRequestUseCase(
      {required this.transportRequestRepository});

  @override
  Future<void> call(UpdateRequestStatusParams params) async =>
      await transportRequestRepository.updateRequestStatus(
          params.id, params.status);
}

import '../../app/core/use_case.dart';
import '../transport_request_repository/transport_request_repository.dart';

class CreateTransportRequestFromQrUseCase
    implements UseCase<Future<void>, String> {
  final TransportRequestRepository transportRequestRepository;
  CreateTransportRequestFromQrUseCase(
      {required this.transportRequestRepository});

  @override
  Future<void> call(String params) async =>
      await transportRequestRepository.createTransportRequestFromQr(params);
}

import 'package:gestion_mercancia_transporte/app/core/use_case.dart';
import 'package:gestion_mercancia_transporte/transport_request/transport_request_repository/models/transport_request.dart';
import 'package:gestion_mercancia_transporte/transport_request/transport_request_repository/transport_request_repository.dart';

class CreateTransportRequestUseCase
    implements UseCase<Future<void>, TransportRequest> {
  final TransportRequestRepository transportRequestRepository;
  CreateTransportRequestUseCase({required this.transportRequestRepository});

  @override
  Future<void> call(TransportRequest params) async =>
      await transportRequestRepository.createTransportRequest(params);
}

import 'package:gestion_mercancia_transporte/app/core/no_params.dart';

import '../../app/core/use_case.dart';
import '../transport_request_repository/models/transport_request.dart';
import '../transport_request_repository/transport_request_repository.dart';

class GetTransportRequestUseCase
    implements UseCase<Future<List<TransportRequest>>, int> {
  final TransportRequestRepository transportRequestRepository;
  GetTransportRequestUseCase({required this.transportRequestRepository});

  @override
  Future<List<TransportRequest>> call(int params) async =>
      await transportRequestRepository.getTransportRequests(params);
}

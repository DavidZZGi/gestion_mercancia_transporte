import 'package:gestion_mercancia_transporte/transport_request/transport_request_repository/service/transport_request_service.dart';

import 'models/transport_request.dart';

class TransportRequestRepository {
  final TransportRequestService transportRequestService;
  TransportRequestRepository({required this.transportRequestService});
  Future<void> deleteTransportRequest(int id) async =>
      transportRequestService.deleteTransportRequest(id);
  Future<void> updateRequestStatus(int id, RequestStatus status) async =>
      transportRequestService.updateRequestStatus(id, status);
  Future<List<TransportRequest>> getTransportRequests() async =>
      transportRequestService.getTransportRequests();
  Future<void> createTransportRequest(TransportRequest request) async =>
      transportRequestService.createTransportRequest(request);
}

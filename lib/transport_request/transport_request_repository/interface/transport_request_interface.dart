import '../models/transport_request.dart';

abstract class TransportRequestInterface {
  Future<void> deleteTransportRequest(int id);
  Future<void> updateRequestStatus(int id, RequestStatus status);
  Future<List<TransportRequest>> getTransportRequests();
  Future<void> createTransportRequest(TransportRequest request);
}

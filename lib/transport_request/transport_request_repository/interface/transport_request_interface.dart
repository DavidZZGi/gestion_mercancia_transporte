import '../models/transport_request.dart';

abstract class TransportRequestInterface {
  Future<void> deleteTransportRequest(int id);
  Future<void> updateRequestStatus(TransportRequest transportRequest);
  Future<List<TransportRequest>> getTransportRequests(int userId);
  Future<void> createTransportRequest(TransportRequest request);
}

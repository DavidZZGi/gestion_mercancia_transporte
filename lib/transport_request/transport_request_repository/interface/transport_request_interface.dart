import '../models/transport_request.dart';

abstract class TransportRequestInterface {
  Future<void> deleteTransportRequest(int id);
  Future<void> updateRequestStatus(TransportRequest transportRequest);
  Future<List<TransportRequest>> getTransportRequests();
  Future<void> createTransportRequest(TransportRequest request);
  Future<void> createTransportRequestFromQr(String qrContent);
}

import 'package:dio/dio.dart';
import 'package:gestion_mercancia_transporte/transport_request/transport_request_repository/service/transport_request_service.dart';

import 'models/transport_request.dart';

class TransportRequestRepository {
  final TransportRequestService transportRequestService;

  TransportRequestRepository({required this.transportRequestService});
  Future<void> deleteTransportRequest(int id) async =>
      await transportRequestService.deleteTransportRequest(id);
  Future<void> updateRequestStatus(TransportRequest transportRequest) async =>
      await transportRequestService.updateRequestStatus(transportRequest);
  Future<List<TransportRequest>> getTransportRequests() async =>
      await transportRequestService.getTransportRequests();
  Future<void> createTransportRequest(TransportRequest request) async =>
      await transportRequestService.createTransportRequest(request);
  Future<void> createTransportRequestFromQr(String codeQr) async =>
      await transportRequestService.createTransportRequestFromQr(codeQr);
  Future<void> uploadTransportRequestToServer() async =>
      await transportRequestService.uploadTransportRequestToServer();
}

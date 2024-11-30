part of 'transport_request_bloc.dart';

@freezed
class TransportRequestEvent with _$TransportRequestEvent {
  const factory TransportRequestEvent.started() = _Started;
  const factory TransportRequestEvent.add(TransportRequest request) =
      _AddTransportRequest;
  const factory TransportRequestEvent.update(TransportRequest request) =
      _UpdateTransportRequest;
  const factory TransportRequestEvent.delete(int id) = _DeleteTransportRequest;
  const factory TransportRequestEvent.getAll() = _GetAllTransportRequest;
  const factory TransportRequestEvent.scanQr(String qrContent) = _ScanQr;
}

part of 'destinatario_bloc.dart';

@freezed
class DestinatarioEvent with _$DestinatarioEvent {
  const factory DestinatarioEvent.started() = _Started;
  const factory DestinatarioEvent.getAll() = _GetAllDestinatario;
  const factory DestinatarioEvent.add({required Destinatario destinatario}) =
      _AddDestinatario;
  const factory DestinatarioEvent.update({required Destinatario destinatario}) =
      _UpdateDestinatario;
  const factory DestinatarioEvent.delete({required int id}) =
      _DeleteDestinatario;
  const factory DestinatarioEvent.scanQr(String qrContent) = _ScanQr;
}

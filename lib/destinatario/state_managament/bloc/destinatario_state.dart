part of 'destinatario_bloc.dart';

@freezed
class DestinatarioState with _$DestinatarioState {
  const factory DestinatarioState.initial() = _Initial;
  const factory DestinatarioState.error({required String message}) = _Error;
  const factory DestinatarioState.loading() = _Loading;
  const factory DestinatarioState.loaded(List<Destinatario> destinatario) =
      _Loaded;
}

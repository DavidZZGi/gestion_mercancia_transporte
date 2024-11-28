part of 'transport_request_bloc.dart';

@freezed
class TransportRequestState with _$TransportRequestState {
  const factory TransportRequestState.initial() = _Initial;
  const factory TransportRequestState.loading() = _Loading;
  const factory TransportRequestState.loaded(List<TransportRequest> requests) =
      _Loaded;
  const factory TransportRequestState.error(String message) = _Error;
}

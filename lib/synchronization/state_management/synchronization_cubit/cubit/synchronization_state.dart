part of 'synchronization_cubit.dart';

@freezed
class SynchronizationState with _$SynchronizationState {
  const factory SynchronizationState.initial() = _Initial;
  const factory SynchronizationState.error(String error) = _Error;
  const factory SynchronizationState.loading() = _Loading;
  const factory SynchronizationState.successUpload() = _SuccessUpload;
}

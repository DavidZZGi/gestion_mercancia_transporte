part of 'logout_cubit.dart';

@freezed
class LogoutState with _$LogoutState {
  const factory LogoutState.initial() = _Initial;
  const factory LogoutState.success() = _Success;
  const factory LogoutState.error(String message) = _Error;
}

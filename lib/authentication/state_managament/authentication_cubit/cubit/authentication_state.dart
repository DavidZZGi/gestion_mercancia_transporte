part of 'authentication_cubit.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _Initial;
  const factory AuthenticationState.authenticated() = _Authenticated;
  const factory AuthenticationState.unauthenticated() = _Unauthenticated;
}

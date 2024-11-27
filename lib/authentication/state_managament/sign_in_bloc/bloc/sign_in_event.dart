part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.started() = _Started;
  const factory SignInEvent.signIn({
    required String username,
    required String password,
  }) = _SignIn;
}

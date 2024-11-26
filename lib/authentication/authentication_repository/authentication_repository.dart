import 'package:gestion_mercancia_transporte/authentication/authentication_repository/service/auth_service.dart';

class AuthenticationRepository {
  final AuthService authService;
  AuthenticationRepository({required this.authService});

  Future<void> signIn() async {
    await authService.signIn();
  }

  Future<void> signUp() async {
    await authService.signUp();
  }

  Future<void> forgetPassword() async {
    await authService.forgetPassword();
  }
}

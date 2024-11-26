abstract class AuthInterface {
  Future<void> signIn();
  Future<void> signUp();
  Future<void> forgetPassword();
}

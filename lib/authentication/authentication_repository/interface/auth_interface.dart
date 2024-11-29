import '../models/user.dart';

abstract class AuthInterface {
  Future<User?> signIn({required String email, required String password});
  Future<void> signUp({required User user});
  Future<void> changePassword(
      {required int userId, required String newPassword});
  bool isAuthenticated();
  Future<void> logOut();
}

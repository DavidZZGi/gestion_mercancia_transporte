import 'dart:convert';

import 'package:gestion_mercancia_transporte/app/data/database_helper.dart';
import 'package:gestion_mercancia_transporte/authentication/authentication_repository/interface/auth_interface.dart';
import 'package:sqflite/sqflite.dart';
import 'package:crypto/crypto.dart';

import '../../../app/utils/app_preferences.dart';
import '../models/user.dart';

class AuthService implements AuthInterface {
  final DatabaseHelper databaseHelper;
  final String userTable = 'users';
  AuthService({required this.databaseHelper});

  @override
  Future<User?> signIn(
      {required String email, required String password}) async {
    final db = await databaseHelper.database;
    final hashedPassword = _hashPassword(password);

    final results = await db.query(
      userTable,
      where: 'email = ? AND passwordHash = ?',
      whereArgs: [email, hashedPassword],
    );

    if (results.isNotEmpty) {
      final token = _generateAuthToken(email);
      await AppPreferences.setAuthToken(token);
      return User.fromJson(results.first);
    }
    return null;
  }

  @override
  bool isAuthenticated() {
    return AppPreferences.isAuthenticated();
  }

  /// Cierra sesión y elimina el token
  @override
  Future<void> logOut() async {
    await AppPreferences.clearAuthToken();
  }

  @override
  Future<void> signUp({required User user}) async {
    final db = await databaseHelper.database;
    final userwithPass =
        user.copyWith(passwordHash: _hashPassword(user.passwordHash));
    print(userwithPass);
    await db.insert(
      userTable,
      userwithPass.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  @override
  Future<void> changePassword(
      {required int userId, required String newPassword}) async {
    final db = await databaseHelper.database;
    final hashedPassword = _hashPassword(newPassword);

    await db.update(
      userTable,
      {'passwordHash': hashedPassword},
      where: 'id = ?',
      whereArgs: [userId],
    );
  }

  String _hashPassword(String password) {
    final bytes = utf8.encode(password);
    return sha256.convert(bytes).toString();
  }

  String _generateAuthToken(String email) {
    // En una aplicación real, este token vendría de un servidor
    return 'token_${email}_${DateTime.now().millisecondsSinceEpoch}';
  }
}

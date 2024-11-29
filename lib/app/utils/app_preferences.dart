import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  static const String _authTokenKey = "auth_token";

  static late SharedPreferences _preferences;

  // Inicializa las preferencias
  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  /// Guarda el token de autenticación
  static Future<void> setAuthToken(String token) async {
    await _preferences.setString(_authTokenKey, token);
  }

  /// Obtiene el token de autenticación
  static String? getAuthToken() {
    return _preferences.getString(_authTokenKey);
  }

  /// Limpia el token de autenticación
  static Future<void> clearAuthToken() async {
    await _preferences.remove(_authTokenKey);
  }

  /// Comprueba si el usuario está autenticado
  static bool isAuthenticated() {
    final token = getAuthToken();
    return token != null && token.isNotEmpty;
  }
}

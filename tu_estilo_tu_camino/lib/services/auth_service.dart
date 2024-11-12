import 'dart:convert';
import 'package:http/http.dart' as http;
import '../ models/auth_model.dart';
import '../utils/app_constants.dart';

class AuthService {
  Future<AuthModel?> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse(AppConstants.loginEndpoint),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email, 'password': password}),
      );
      if (response.statusCode == 200) {
        return AuthModel.fromJson(jsonDecode(response.body));
      } else {
        return null;
      }
    } catch (e) {
      print("Error de conexión al backend: $e");
      return null;
    }
  }
}

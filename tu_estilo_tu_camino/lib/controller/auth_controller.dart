import 'package:get/get.dart';
import '../services/auth_service.dart';
import '../view/home_view.dart';

class AuthController extends GetxController {
  final AuthService _authService = AuthService();
  var isLoading = false.obs;

  Future<void> login(String email, String password) async {
    isLoading.value = true;
    final auth = await _authService.login(email, password);
    isLoading.value = false;

    if (auth != null) {
      Get.off(() => HomeView());
    } else {
      Get.snackbar('Error', 'Inicio de sesión pendiente');
      Get.off(() => HomeView()); // Navega a Home incluso si falla
    }
  }
}

import 'package:get/get.dart';
import '../models/Password.dart';

class PasswordController extends GetxController {
  var password = Password();

  void togglePasswordVisibility() {
    password.passwordverify.value = !password.passwordverify.value;
  }
}

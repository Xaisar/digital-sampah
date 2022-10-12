import 'package:digital_sampah/app/models/hidepassword.dart';
import 'package:get/get.dart';

class HidePasswordController1 extends GetxController {
  var password = HidePassword1();

  void togglePasswordVisibility1() {
    password.passwordverify.value = !password.passwordverify.value;
  }
}

class HidePasswordController2 extends GetxController {
  var password = HidePassword2();

  void togglePasswordVisibility2() {
    password.passwordverify.value = !password.passwordverify.value;
  }
}

class HidePasswordController3 extends GetxController {
  var password = HidePassword3();

  void togglePasswordVisibility3() {
    password.passwordverify.value = !password.passwordverify.value;
  }
}

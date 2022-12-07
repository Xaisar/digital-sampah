import 'package:get/get.dart';

class GantipasswordController extends GetxController {
  var passwordverify1 = true.obs;
  var passwordverify2 = true.obs;

  void togglePasswordVisibility1() {
    passwordverify1.value = !passwordverify1.value;
  }

  void togglePasswordVisibility2() {
    passwordverify2.value = !passwordverify2.value;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

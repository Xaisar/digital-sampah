import 'package:get/get.dart';
import '../account.dart';

class AccountController extends GetxController {
  var verify = true.obs;
  var account = Account().obs;

  void isset() {
    verify.value = !verify.value;
  }

  void tambahUsername() {}
}

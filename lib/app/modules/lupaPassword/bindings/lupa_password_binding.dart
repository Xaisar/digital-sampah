import 'package:get/get.dart';

import 'package:digital_sampah/app/modules/lupaPassword/controllers/gantipassword_controller.dart';

import '../controllers/lupa_password_controller.dart';

class LupaPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GantipasswordController>(
      () => GantipasswordController(),
    );
    Get.lazyPut<LupaPasswordController>(
      () => LupaPasswordController(),
    );
  }
}

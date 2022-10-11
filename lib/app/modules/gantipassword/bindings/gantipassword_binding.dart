import 'package:get/get.dart';

import 'package:digital_sampah/app/modules/gantipassword/controllers/formpassworbaru_controller.dart';

import '../controllers/gantipassword_controller.dart';

class GantipasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FormpassworbaruController>(
      () => FormpassworbaruController(),
    );
    Get.lazyPut<GantipasswordController>(
      () => GantipasswordController(),
    );
  }
}

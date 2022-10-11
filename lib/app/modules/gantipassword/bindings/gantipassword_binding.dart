import 'package:get/get.dart';

import '../controllers/gantipassword_controller.dart';

class GantipasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GantipasswordController>(
      () => GantipasswordController(),
    );
  }
}

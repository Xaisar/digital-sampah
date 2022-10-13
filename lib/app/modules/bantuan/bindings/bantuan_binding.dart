import 'package:get/get.dart';

import '../controllers/bantuan_controller.dart';

class BantuanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BantuanController>(
      () => BantuanController(),
    );
  }
}

import 'package:get/get.dart';

import '../controllers/pengambilan_controller.dart';

class PengambilanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PengambilanController>(
      () => PengambilanController(),
    );
  }
}

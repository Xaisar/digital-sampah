import 'package:get/get.dart';

import '../controllers/pemayaran_controller.dart';

class PemayaranBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PemayaranController>(
      () => PemayaranController(),
    );
  }
}

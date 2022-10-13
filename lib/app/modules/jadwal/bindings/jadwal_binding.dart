import 'package:get/get.dart';

import '../controllers/jadwal_controller.dart';

class JadwalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JadwalController>(
      () => JadwalController(),
    );
  }
}

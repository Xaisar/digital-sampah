import 'package:get/get.dart';

import '../controllers/riwayat_pengambilan_controller.dart';

class RiwayatPengambilanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RiwayatPengambilanController>(
      () => RiwayatPengambilanController(),
    );
  }
}

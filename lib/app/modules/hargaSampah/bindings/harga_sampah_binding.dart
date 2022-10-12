import 'package:get/get.dart';

import '../controllers/harga_sampah_controller.dart';

class HargaSampahBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HargaSampahController>(
      () => HargaSampahController(),
    );
  }
}

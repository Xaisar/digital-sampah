import 'package:get/get.dart';

import '../controllers/home_petugas_controller.dart';

class HomePetugasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePetugasController>(
      () => HomePetugasController(),
    );
  }
}

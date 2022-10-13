import 'package:get/get.dart';

import '../controllers/statistiknasabah_controller.dart';

class StatistiknasabahBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StatistiknasabahController>(
      () => StatistiknasabahController(),
    );
  }
}

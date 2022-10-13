import 'package:get/get.dart';

import '../controllers/paymentpage_controller.dart';

class PaymentpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentpageController>(
      () => PaymentpageController(),
    );
  }
}

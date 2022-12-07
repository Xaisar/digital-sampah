import 'package:digital_sampah/app/data/models/nasabah_model.dart';
import 'package:digital_sampah/app/data/models/petugas_model.dart';
import 'package:get/get.dart';

class LupaPasswordController extends GetxController {
  var nasabah = Nasabah();
  var petugas = Petugas();
  var role = "".obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

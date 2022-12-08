import 'package:get/get.dart';

class HomePageController extends GetxController {
  final List<Map<String, dynamic>> isinasabah = [
    {
      'id': '1',
      'userId': '1',
      "nama": 'Nada Celia Sinka Ines',
      'tempatLahir': 'Banyuwangi',
      'tanggalLahir': '2 Februari 2002 ',
      'alamat': 'Rogojampi',
      'dawis': '001',
      'tanggalMasuk': '3 Mei 2021',
      'saldo': 46000
    },
    {
      'id': '2',
      'userId': '2',
      "nama": 'Rizal Andriansyah',
      'tempatLahir': 'Banyuwangi',
      'tanggalLahir': '1 Juni 2003',
      'alamat': 'Rogojampi',
      'dawis': '001',
      'tanggalMasuk': '15 Maret 2022',
      'saldo': 0
    }
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }
}

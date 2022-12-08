import 'package:digital_sampah/app/data/models/petugas_model.dart';
import 'package:get/get.dart';

class HomePetugasController extends GetxController {
  var petugas = Petugas();

  final List<Map<String, dynamic>> isiPetugas = [
    {
      'id': '1',
      'userId': '3',
      "nama": 'Jehan Khairul Anwar',
      'tempatLahir': 'Banyuwangi',
      'tanggalLahir': '1 April 2002 ',
      'alamat': 'Tambong',
      'dawis': '001',
      'tanggalMasuk': '8 Agustus 2021',
      'role': 'Pencatat'
    },
    {
      'id': '2',
      'userId': '4',
      "nama": 'Rizal Ardiansyah',
      'tempatLahir': 'Banyuwangi',
      'tanggalLahir': '19 Juli 2003',
      'alamat': 'Rogojampi',
      'dawis': '001',
      'tanggalMasuk': '30 November 2022',
      'role': 'Penimbang'
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

  @override
  void onClose() {
    super.onClose();
  }
}

import 'package:digital_sampah/app/modules/riwayatPengambilan/views/detail_riwayat_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/riwayat_pengambilan_controller.dart';

class RiwayatPengambilanView extends GetView<RiwayatPengambilanController> {
  RiwayatPengambilanView({Key? key}) : super(key: key);

  List<Map<dynamic, dynamic>> item = [
    {
      'nama': 'Sugi Puji Astuti',
      'dawis': 'Dawis 004',
      'tanggal': '3 Desember 2022'
    },
    {'nama': 'Danu', 'dawis': 'Dawis 004', 'tanggal': '3 Desember 2022'},
    {
      'nama': 'Siti Nur Halimah',
      'dawis': 'Dawis 004',
      'tanggal': '3 Desember 2022'
    },
    {
      'nama': 'Budi Pratama',
      'dawis': 'Dawis 004',
      'tanggal': '3 Desember 2022'
    },
    {
      'nama': 'Agara Dharma',
      'dawis': 'Dawis 004',
      'tanggal': '3 Desember 2022'
    },
    {'nama': 'Cahyono', 'dawis': 'Dawis 004', 'tanggal': '3 Desember 2022'},
    {
      'nama': 'Dimas Indra Kencana',
      'dawis': 'Dawis 001',
      'tanggal': '2 Desember 2022'
    },
    {
      'nama': 'Muhammad Bilal Rhamadan',
      'dawis': 'Dawis 001',
      'tanggal': '2 Desember 2022'
    },
    {'nama': 'Hardiansyah', 'dawis': 'Dawis 001', 'tanggal': '2 Desember 2022'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: const Text('Riwayat Pengambilan'),
          backgroundColor: Color(0xFF1AD443),
        ),
        body: ListView.builder(
            itemCount: item.length,
            itemBuilder: ((context, index) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: ListTile(
                  leading: SizedBox(
                    height: 65,
                    width: 65,
                    child: CircleAvatar(
                      child: Image.asset(
                        'assets/icons/money-bag.png',
                      ),
                    ),
                  ),
                  title: Text(item[index]['nama'],
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text(
                    item[index]['dawis'] + "\n" + item[index]['tanggal'],
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  selected: true,
                  onTap: () {
                    Get.to(DetailRiwayatView());
                  },
                ),
              );
            })));
  }
}

import 'package:digital_sampah/app/modules/riwayatPengambilan/views/detail_riwayat_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/riwayat_pengambilan_controller.dart';

class RiwayatPengambilanView extends GetView<RiwayatPengambilanController> {
  RiwayatPengambilanView({Key? key}) : super(key: key);

  List<Map<dynamic, dynamic>> item = [
    {
      'id': '1',
      'nama': 'Nada Celia Sinka Ines',
      'dawis': 'Dawis 001',
      'tanggal': '8 Desember 2022'
    },
    {
      'id': '2',
      'nama': 'Nada Celia Sinka Ines',
      'dawis': 'Dawis 001',
      'tanggal': '8 Desember 2022'
    },
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
                    Get.to(DetailRiwayatView(), arguments: item[index]['id']);
                  },
                ),
              );
            })));
  }
}

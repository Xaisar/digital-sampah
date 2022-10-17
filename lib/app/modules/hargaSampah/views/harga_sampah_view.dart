import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/harga_sampah_controller.dart';

class HargaSampahView extends GetView<HargaSampahController> {
  final List<Map<String, dynamic>> myList = [
    {"Name": "Kardus", "Satuan": "Kg", "Harga": "3.000"},
    {"Name": "Aqua Gelas", "Satuan": "Kg", "Harga": "4.000"},
    {"Name": "Ale-Ale Dll", "Satuan": "Kg", "Harga": "3.000"},
    {"Name": "Botol Plastik", "Satuan": "Kg", "Harga": "2.000"},
    {"Name": "Ale-Ale Botol Plastik", "Satuan": "Kg", "Harga": "2.500"},
    {"Name": "Emberan/Plastik Ringan", "Satuan": "Kg", "Harga": "2.200"},
    {"Name": "Kertas HVS", "Satuan": "Kg", "Harga": "1.500"},
    {"Name": "Kertas Buram", "Satuan": "Kg", "Harga": "700"},
    {"Name": "Koran Bekas", "Satuan": "Kg", "Harga": "2.500"},
    {"Name": "Plastik", "Satuan": "Kg", "Harga": "50"},
    {"Name": "Kresek", "Satuan": "Kg", "Harga": "200"},
    {"Name": "Besi", "Satuan": "Kg", "Harga": "3.000"},
    {"Name": "Tembaga", "Satuan": "Kg", "Harga": "70.000"},
    {"Name": "Alumunium", "Satuan": "Kg", "Harga": "8.000"},
    {"Name": "Kaleng", "Satuan": "Kg", "Harga": "1.000"},
    {"Name": "Plastik Keras", "Satuan": "Kg", "Harga": "300"},
    {"Name": "Botol Kecap, Saos, Marjan", "Satuan": "Kg", "Harga": "300"},
    {"Name": "Aki", "Satuan": "Kg", "Harga": "6.500"},
    {"Name": "Duplex", "Satuan": "Kg", "Harga": "500"},
    {"Name": "Oli", "Satuan": "Kg", "Harga": "500"},
    {"Name": "Beling", "Satuan": "Kg", "Harga": "300"},
    {"Name": "Botol Kaca", "Satuan": "Biji", "Harga": "300"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          title: const Text('Harga Sampah'),
          backgroundColor: Color(0xFF1AD443),
          centerTitle: false,
        ),
        body: ListView.builder(
            padding: EdgeInsets.only(top: 10),
            itemCount: myList.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return IsiList(myList[index]['Name'], myList[index]['Harga'],
                  myList[index]['Satuan']);
            }));
  }

  IsiList(nama, count, satuan) {
    return Container(
        // width: Get.width,
        margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    nama,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '/ ' + satuan,
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                child: Text(
                  'Rp. ' + count,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18),
                ))
          ],
        ));
  }
}

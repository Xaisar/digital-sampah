import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/riwayat_controller.dart';

class RiwayatView extends GetView<RiwayatController> {
  final List<Map<String, dynamic>> daftar = [
    {'Tipe': 'Air', 'Jumlah': '350000', 'Tanggal': '10-10-2010'},
    {'Tipe': 'Listrik', 'Jumlah': '180000', 'Tanggal': '11-12-2010'},
    {'Tipe': 'PBB', 'Jumlah': '1000000', 'Tanggal': '25-07-2010'},
    {'Tipe': 'Listrik', 'Jumlah': '250000', 'Tanggal': '19-10-2010'},
    {'Tipe': 'Air', 'Jumlah': '460000', 'Tanggal': '30-11-2010'},
    {'Tipe': 'Listrik', 'Jumlah': '150000', 'Tanggal': '01-05-2010'},
    {'Tipe': 'Listrik', 'Jumlah': '230000', 'Tanggal': '07-09-2010'},
    {'Tipe': 'Air', 'Jumlah': '400000', 'Tanggal': '02-02-2010'},
    {'Tipe': 'Air', 'Jumlah': '330000', 'Tanggal': '21-08-2010'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          title: const Text('Harga Sampah'),
          backgroundColor: Color(0xFF1AD443),
          centerTitle: false,
        ),
        body: ListView.builder(
            padding: EdgeInsets.only(top: 10),
            itemCount: daftar.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return IsiList(daftar[index]['Tipe'], daftar[index]['Jumlah'],
                  daftar[index]['Tanggal']);
            }));
  }

  IsiList(tipe, jumlah, tanggal) {
    return Container(
        // width: Get.width,
        margin: EdgeInsets.only(bottom: 10, left: 5, right: 5),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[100],
                      child: Image.asset(
                        (tipe == "Air"
                            ? "assets/icons/air.png"
                            : tipe == "Listrik"
                                ? "assets/icons/listrik.png"
                                : "assets/icons/pbb.png"),
                        width: 35,
                        height: 35,
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text('Pembayaran ' + tipe,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(tanggal,
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16)),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                  child: Text(
                '- Rp. ' + jumlah,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ))
            ],
          )
        ]));
  }
}

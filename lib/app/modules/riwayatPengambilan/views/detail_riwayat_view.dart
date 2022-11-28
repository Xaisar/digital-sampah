import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DetailRiwayatView extends GetView {
  DetailRiwayatView({Key? key}) : super(key: key);

  List<Map<dynamic, dynamic>> sampah = [
    {'Nama': 'Botol', 'harga': 2000, 'berat': 2.5},
    {'Nama': 'Plastik', 'harga': 5000, 'berat': 9.2},
    {'Nama': 'Kaleng', 'harga': 8000, 'berat': 1.3},
    {'Nama': 'Besi', 'harga': 9000, 'berat': 8.6},
    {'Nama': 'Kertas', 'harga': 1000, 'berat': 8.9},
    {'Nama': 'Botol', 'harga': 2000, 'berat': 2.5},
    {'Nama': 'Plastik', 'harga': 5000, 'berat': 9.2},
    {'Nama': 'Kaleng', 'harga': 8000, 'berat': 1.3},
    {'Nama': 'Besi', 'harga': 9000, 'berat': 8.6},
    {'Nama': 'Kertas', 'harga': 1000, 'berat': 8.9},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: const Text('Detail Pengambilan'),
          centerTitle: true,
          backgroundColor: Color(0xFF1AD443),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white),
          child: Stack(fit: StackFit.expand, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Text(
                    'Nasabah',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text("No. Nasabah : ",
                              style: TextStyle(fontSize: 16))),
                      Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child:
                              Text("Nama : ", style: TextStyle(fontSize: 16))),
                      Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child:
                              Text("Dawis : ", style: TextStyle(fontSize: 16))),
                      Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text("Petugas : ",
                              style: TextStyle(fontSize: 16))),
                      Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text("Tanggal : ",
                              style: TextStyle(fontSize: 16))),
                    ],
                  ),
                ),
                Container(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 15),
                    height: 2,
                    color: Colors.black,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Text(
                    'Daftar Sampah',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sampah', style: TextStyle(fontSize: 16)),
                        Text('Total', style: TextStyle(fontSize: 16))
                      ]),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: ListView.builder(
                      itemCount: sampah.length,
                      itemBuilder: ((context, index) {
                        return Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(bottom: 5),
                                child: Text(sampah[index]['Nama']),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 10, bottom: 8),
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                        sampah[index]['harga'].toString() +
                                            " x " +
                                            sampah[index]['berat'].toString() +
                                            " ="),
                                  ),
                                  Container(
                                    alignment: Alignment.topRight,
                                    child: Text("Rp. " +
                                        ((sampah[index]['harga'] *
                                                sampah[index]['berat']))
                                            .toString()),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      })),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 35,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    width: Get.width * 0.85,
                    height: 35,
                    child: ElevatedButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xFF1AD443)),
                        onPressed: () {
                          Get.back();
                        },
                        child: Text('Kembali')))
              ],
            )
          ]),
        ));
  }
}

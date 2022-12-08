import 'package:digital_sampah/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_cli/common/utils/json_serialize/json_ast/utils/grapheme_splitter.dart';

// ignore: must_be_immutable
class DetailPengambilanView extends GetView {
  DetailPengambilanView({Key? key}) : super(key: key);
  List<Map<dynamic, dynamic>> sampah = [
    {'Nama': 'Plastik', 'harga': 2000, 'berat': 2},
    {'Nama': 'Kertas', 'harga': 2500, 'berat': 4},
    {'Nama': 'Kaleng', 'harga': 3000, 'berat': 1},
  ];

  num subTotal = 17000;

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
                      // Padding(
                      //     padding: EdgeInsets.only(bottom: 10),
                      //     child: Text("No. Nasabah : 005",
                      //         style: TextStyle(fontSize: 16))),
                      Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text("Nama : Nada Celia Sinka Ines",
                              style: TextStyle(fontSize: 16))),
                      Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text("Dawis : Dawis 001",
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
                Flexible(
                  fit: FlexFit.tight,
                  child: ListView.builder(
                      itemCount: sampah.length,
                      itemBuilder: ((context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ListTile(
                              title: Text(sampah[index]['Nama'],
                                  style: TextStyle(fontSize: 18)),
                              subtitle: Text(
                                  sampah[index]['harga'].toString() +
                                      " X " +
                                      sampah[index]['berat'].toString(),
                                  style: TextStyle(fontSize: 14)),
                              trailing: Text(
                                "Rp. " +
                                    (sampah[index]['harga'] *
                                            sampah[index]['berat'])
                                        .toString(),
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            (index + 1 == sampah.length
                                ? Column(
                                    children: [
                                      Row(
                                        children: [
                                          Flexible(
                                            child: Container(
                                              color: Colors.grey,
                                              height: 2,
                                              width: Get.width,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Text(
                                              "+",
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          )
                                        ],
                                      ),
                                      ListTile(
                                        title: Text("Total =",
                                            style: TextStyle(fontSize: 18)),
                                        trailing: Text(
                                          "Rp. " + subTotal.toString(),
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      )
                                    ],
                                  )
                                : SizedBox())
                          ],
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
                        child: Text('Simpan')))
              ],
            )
          ]),
        ));
  }
}

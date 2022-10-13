import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/harga_sampah_controller.dart';

class HargaSampahView extends GetView<HargaSampahController> {
  const HargaSampahView({Key? key}) : super(key: key);
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
            itemCount: 1000,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return IsiList('Sampah nya Mase', '1.000.000', 'Kg');
            }));
  }

  IsiList(nama, count, satuan) {
    return Container(
        // width: Get.width,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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

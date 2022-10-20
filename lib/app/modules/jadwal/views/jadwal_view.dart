import 'package:digital_sampah/component1/treebotton.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/jadwal_controller.dart';

class JadwalView extends GetView<JadwalController> {
  const JadwalView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          title: const Text('Jadwal Penjemputan'),
          backgroundColor: Color(0xFF1AD443),
          centerTitle: false,
        ),
        body: ListView.builder(
            itemCount: 110,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return IsiList('Dawis 001', 'Jln. Tambong Gg. Kalimati', 'Kg');
            }));
  }

  IsiList(nama, alamat, satuan) {
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
                  OutlinedButton(onPressed: (){},
                   
                  child: Text("change", style: 
                  TextStyle( color: Colors.green ),)),
                //   AppButtons(
                //   icon: Icons.print_outlined,
                //   onTap: () {},
                //   // text: "print",
                // ),
                ],
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                child: Text(
                  alamat,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18),
                ))
          ],
        ));
  }
}

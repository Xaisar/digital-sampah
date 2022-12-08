import 'package:digital_sampah/app/modules/Pengambilan/views/form_pengambilan_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pengambilan_controller.dart';

// ignore: must_be_immutable
class PengambilanView extends GetView<PengambilanController> {
  PengambilanView({Key? key}) : super(key: key);
  List<Map<String, dynamic>> dawis = [
    {
      'id': '1',
      'dawis': '001',
      'nama': 'Rizal Andriansyah',
      'alamat': 'Rogojampi'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dawis'),
          backgroundColor: Color(0xFF1AD443),
        ),
        body: ListView.builder(
            itemCount: dawis.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Text(
                      'Dawis ' + dawis[index]['dawis'],
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  subtitle: Text(dawis[index]['nama'],
                      textAlign: TextAlign.left,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.black, fontSize: 14)),
                  trailing: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Pilih',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      )
                    ],
                  ),
                  selected: true,
                  onTap: () {
                    Get.to(FormPengambilanView());
                  },
                  style: ListTileStyle.list,
                ),
              );
            }));
  }
}

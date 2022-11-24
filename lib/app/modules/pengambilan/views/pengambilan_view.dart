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
      'nama': 'Dharma Wangsa Kencana Puji dharma',
      'alamat': 'Kabat'
    }
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
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                  onPressed: () {
                    Get.to(FormPengambilanView());
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(bottom: 8),
                          child: Text(
                            'Dawis ' + dawis[index]['dawis'],
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(dawis[index]['nama'],
                                  textAlign: TextAlign.left,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15)),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}

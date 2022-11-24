import 'package:digital_sampah/app/modules/riwayatPengambilan/views/detail_riwayat_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/riwayat_pengambilan_controller.dart';

class RiwayatPengambilanView extends GetView<RiwayatPengambilanController> {
  RiwayatPengambilanView({Key? key}) : super(key: key);

  List<Map<dynamic, dynamic>> item = [
    {},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Riwayat Pengambilan'),
          backgroundColor: Color(0xFF1AD443),
        ),
        body: ListView.builder(
            itemCount: item.length,
            itemBuilder: ((context, index) {
              return Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                  onPressed: (() {
                    Get.to(DetailRiwayatView());
                  }),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: SizedBox(
                            height: 65,
                            width: 65,
                            child: CircleAvatar(
                              child: Image.asset(
                                'assets/icons/money-bag.png',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 5),
                                child: Text('Sugi Puji Astuti',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 5),
                                child: Text(
                                  'Dawis 004',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 5),
                                child: Text('1 - 12 -2002',
                                    style: TextStyle(
                                      color: Colors.black,
                                    )),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            })));
  }
}

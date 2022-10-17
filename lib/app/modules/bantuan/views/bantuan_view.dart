import 'dart:ui';

import 'package:digital_sampah/colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';

import '../controllers/bantuan_controller.dart';

class BantuanView extends GetView<BantuanController> {
    final List<Map<String, dynamic>> kontakBantuan = [
    {'Name': 'Stranger', 'Nomor': '+6285212568455'},
    {'Name': 'Aji', 'Nomor': '+6281334967376'}
  ];


  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.maingreen,
        title: const Text('BantuanView'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
        height: h,
        width: w,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/background_bayar.png")),
        ),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: h * 0.14,
              decoration: BoxDecoration(
                image: DecorationImage(
                    
                    image: AssetImage("assets/icons/logo.png")),
              ),
            ),
            Text(
              "Bantuan !",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppColor.mainColor,
              ),
            ),
            SizedBox(height: 2),
            Text(
              "Layanan Kami Akan Tersedia Selama Jam Kerja !",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: AppColor.idColor,
              ),
            ),
            SizedBox(height: h * 0.045),
            Container(
              height: 160,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 2,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView(
                  children: [
                    Column(
                      
                      children: [
                        Container(
                          //bisa si hapus di atas
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 20, right: 0, left: 85) ,
                                child: Row(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Hubungi Kami :",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: AppColor.mainColor,
                                          ),
                                        ),
                                        
                                        Text(
                                          "0813-3496-7698",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: AppColor.idColor,
                                          ),
                                        ),

                                        Text(
                                          "Samsudin",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: AppColor.idColor,
                                          ),
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          "0813-7687-9765",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: AppColor.idColor,
                                          ),
                                        ),

                                        Text(
                                          "Arile Noahh",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: AppColor.idColor,
                                          ),
                                        ),

                            
            Container(
              child: TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            backgroundColor: Colors.grey[300],
                            alignment: Alignment.center,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  //title whatsapp
                                  Container(
                                      alignment: Alignment.topCenter,
                                      margin: EdgeInsets.only(bottom: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/logo/whatsApp.png',
                                            height: 50,
                                            width: 50,
                                          ),
                                          Text(
                                            'WhatsApp',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          )
                                        ],
                                      )),
                                  contactUI(kontakBantuan[0]['Name'],
                                      kontakBantuan[0]['Nomor']),
                                  contactUI(kontakBantuan[1]['Name'],
                                      kontakBantuan[1]['Nomor']),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Text(
                    'Hubungi Kami',
                    style: TextStyle(color: Colors.yellow[800]),
                  )),
            ),
            
                
                  ],
               ),
                                  ],
                                  
                                ),
                              ),
                             
                              

                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
  
   helpCenter(context, List<Map<String, dynamic>> listkontak) {
    return Container(
        margin: EdgeInsets.only(bottom: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Butuh Bantuan?'),
            TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          backgroundColor: Colors.grey[300],
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                //title whatsapp
                                Container(
                                    alignment: Alignment.topCenter,
                                    margin: EdgeInsets.only(bottom: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/logo/whatsApp.png',
                                          height: 50,
                                          width: 50,
                                        ),
                                        Text(
                                          'WhatsApp',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        )
                                      ],
                                    )),
                                contactUI(listkontak[0]['Name'],
                                    listkontak[0]['Nomor']),
                                contactUI(listkontak[1]['Name'],
                                    listkontak[1]['Nomor']),
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: Text(
                  'Hubungi Kami',
                  style: TextStyle(color: Colors.yellow[800]),
                ))
          ],
        ));
  }


  contactUI(Nama, Nomor) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 5, left: 10),
            alignment: Alignment.topLeft,
            child: Text(
              Nama,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          TextButton(
            onPressed: () {
              whatssApp(Nomor);
            },
            child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border:
                      Border.all(style: BorderStyle.solid, color: Colors.grey)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Nomor,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15),
                  ),
                  Icon(
                    Icons.call,
                    size: 30,
                    color: Colors.green,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> whatssApp(Number) async {
    final url = "https://wa.me/$Number";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Tidak bisa terhubung, Silahkan Coba Lagi';
    }
    ;
  }
}

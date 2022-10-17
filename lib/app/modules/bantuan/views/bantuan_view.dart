import 'dart:ui';

import 'package:digital_sampah/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bantuan_controller.dart';

class BantuanView extends GetView<BantuanController> {
  const BantuanView({Key? key}) : super(key: key);
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
                                      ],
                                    ),
                                    SizedBox(width: 7),

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
}

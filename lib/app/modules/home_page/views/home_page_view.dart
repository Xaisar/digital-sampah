import 'package:digital_sampah/app/modules/home/views/home_view.dart';
import 'package:digital_sampah/component/card_title.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_page_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         //nama aplikasi
        centerTitle: false,
        title: RichText(
          text: TextSpan(
            text: "Hai, ",
            style: TextStyle(
              fontSize: 18,
            ),
            children: [
              TextSpan(
                text: "Mohamad Aji Hermansya",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        actions: [
          // GestureDetector(
          //   onTap: () {},
          //   child: Container(
          //       margin: EdgeInsets.only(right: 15),
          //       width: 30,
          //       height: 30,
          //       child: Image.asset(
          //         "assets/icons/profile.png",
          //         fit: BoxFit.contain,
          //       )), 
          // ),
          Container(
                margin: EdgeInsets.only(right: 15),
                width: 30,
                height: 30,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(1),
                        primary: Color(0xFF1AD443),
                        shape: new CircleBorder(),
                      ),
                      onPressed: () {},
                      child: Icon(Icons.person_outlined),
                    ),
          ),
        ],
        backgroundColor: Color(0xFF1AD443),
        elevation: 0,
      ),
  //clipPath
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 250,
              width: Get.width,
              color: Color(0xFF1AD443),
            ),
          ),
        //kartu

        Container(
          child: PageView(
            children: [
              MyCard(NIK_Nasabah: 3213125205680006, 
              NoDawis: 001, 
              TitleSaldo: 156000, 
              TitleHariPenjemputan: "Hari Juma't", 
              color: Color(0xffF7EC09), 
              TitleAnggota: "active")
            ],
          ),
        ),

        



        ],

      ),




    

        



          //menu

          //informasipenjemputan

          //informasievent



















    );
  }
}
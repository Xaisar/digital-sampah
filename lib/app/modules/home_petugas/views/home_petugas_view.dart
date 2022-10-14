import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_petugas_controller.dart';

class HomePetugasView extends GetView<HomePetugasController> {
  const HomePetugasView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/backgroundregister.png',
            fit: BoxFit.fill,
          ),
          Column(
            children: [
              Container(
                  //foto profil sisi kanan, nama disisi kiri
                  ),
              ListView(),
            ],
          )
        ],
      )),
    );
  }
}

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
            'assets/images/backgroundRegister.png',
            fit: BoxFit.fill,
          ),
          Column(
            children: <Widget>[
              Container(
                height: 100,
                padding: EdgeInsets.only(right: 15.0, top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/avatar.png'),
                    )
                  ],
                ),
                //foto profil sisi kanan, nama disisi kiri
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Hallo Praya',
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                ],
              )
              // ListView(),
            ],
          )
        ],
      )),
    );
  }
}

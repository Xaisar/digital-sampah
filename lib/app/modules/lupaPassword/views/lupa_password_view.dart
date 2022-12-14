import 'package:digital_sampah/app/modules/lupaPassword/views/ganti_password_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_cli/functions/version/print_get_cli.dart';

import '../controllers/lupa_password_controller.dart';

class LupaPasswordView extends GetView<LupaPasswordController> {
  LupaPasswordView({Key? key}) : super(key: key);
  final lupaPasswordC = LupaPasswordController();
  @override
  Widget build(BuildContext context) {
    lupaPasswordC.role.value = Get.arguments!;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
          alignment: Alignment.topCenter,
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              'assets/images/backgroundLupaPassword.png',
              fit: BoxFit.fill,
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            Column(children: [
              Container(
                margin: const EdgeInsets.only(top: 80, bottom: 40),
                alignment: Alignment.topCenter,
                child: Text(
                  'Lupa Password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(50)),
                  ),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.topCenter,
                            margin: const EdgeInsets.only(
                                top: 30, left: 30, right: 30),
                            child: Column(children: [
                              // NIK field
                              noNasabah(),
                              //Nama Field
                              nama(),
                              //Tanggal Lahir Field
                              tanggalLahir(),
                            ]),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [tombolKonfirmasi(context)],
                      )
                    ],
                  ),
                ),
              )
            ]),
          ]),
    );
  }

  noNasabah() {
    return Container(
        margin: const EdgeInsets.only(bottom: 15),
        child: Column(children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(bottom: 10),
            child: const Text(
              'Username',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                hintText: 'Input Username',
                focusColor: Colors.white,
              ),
            ),
          ),
        ]));
  }

  nama() {
    return Container(
        margin: const EdgeInsets.only(bottom: 15),
        child: Column(children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(bottom: 10),
            child: const Text(
              'Nama',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: const TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                hintText: 'Input Nama',
                focusColor: Colors.white,
              ),
            ),
          ),
        ]));
  }

  tanggalLahir() {
    return Container(
        margin: const EdgeInsets.only(bottom: 15),
        child: Column(children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(bottom: 10),
            child: const Text(
              'Tanggal Lahir',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: const TextField(
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                hintText: 'Example: 12-12-2012',
                focusColor: Colors.white,
              ),
            ),
          ),
        ]));
  }

  tombolKonfirmasi(context) {
    return Container(
      margin: EdgeInsets.only(bottom: 80),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50))),
      width: 150,
      height: 60,
      child: ElevatedButton(
        style: TextButton.styleFrom(backgroundColor: Color(0xff1AD443)),
        onPressed: () {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => GantiPasswordView()));
        },
        child: const Text(
          'Konfirmasi',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

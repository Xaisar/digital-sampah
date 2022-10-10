import 'package:digital_sampah/app/routes/app_pages.dart';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1AD443),
      body: Column(children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 50),
          alignment: Alignment.topCenter,
          // color: Colors.black,
          child: SizedBox(
            width: Get.width * 0.4,
            height: Get.width * 0.4,
            child: Image.asset("assets/logo/logo1.png"),
          ),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.white, blurRadius: 5)],
              color: Colors.white,
              borderRadius:
                  BorderRadiusDirectional.only(topStart: Radius.circular(80)),
            ),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  margin: const EdgeInsets.only(
                    top: 30,
                  ),
                  child: const Text(
                    'Selamat Datang',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  // color: Colors.red,
                  child: Column(children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: [
                          Container(
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
                                const TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Input Username',
                                    focusColor: Colors.grey,
                                  ),
                                ),
                              ])),
                          Container(
                              margin: const EdgeInsets.only(bottom: 15),
                              child: Column(children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin: const EdgeInsets.only(bottom: 10),
                                  child: const Text(
                                    'Password',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                                const TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Input Password',
                                    focusColor: Colors.grey,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  margin: const EdgeInsets.only(top: 5),
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      textStyle: const TextStyle(fontSize: 14),
                                    ),
                                    onPressed: () {},
                                    child: const Text('Lupa Password?'),
                                  ),
                                ),
                              ])),
                          SizedBox(
                            width: 150,
                            height: 60,
                            child: ElevatedButton(
                              style: const ButtonStyle(),
                              onPressed: () => Get.offAllNamed(Routes.HOME),
                              child: const Text(
                                'Masuk',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

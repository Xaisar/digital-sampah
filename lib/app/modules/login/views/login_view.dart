import 'package:digital_sampah/app/routes/app_pages.dart';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/password_controller.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final passwordC = Get.put(PasswordController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff1AD443),
      body: Column(children: [
        Container(
          margin: const EdgeInsets.only(top: 80, bottom: 40),
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
              color: Color(0xFFE9E9E9),
              borderRadius:
                  BorderRadiusDirectional.only(topStart: Radius.circular(50)),
            ),
            child: Stack(fit: StackFit.expand, children: [
              Column(
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
                    margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
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
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(0.0, 0.5),
                                            color: Colors.black,
                                            blurStyle: BlurStyle.outer)
                                      ],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: const TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        hintText: 'Input Username',
                                        focusColor: Colors.white,
                                      ),
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
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(0.0, 0.5),
                                            color: Colors.black,
                                            blurStyle: BlurStyle.outer)
                                      ],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Obx(() => TextField(
                                          obscureText: passwordC
                                              .password.passwordverify.value,
                                          autofocus: false,
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20))),
                                              hintText: 'Input Password',
                                              suffixIcon: GestureDetector(
                                                  onTap: () {
                                                    passwordC
                                                        .togglePasswordVisibility();
                                                  },
                                                  child: Icon(
                                                    passwordC
                                                            .password
                                                            .passwordverify
                                                            .value
                                                        ? Icons.visibility_off
                                                        : Icons.visibility,
                                                    color: passwordC
                                                            .password
                                                            .passwordverify
                                                            .value
                                                        ? Colors.grey
                                                        : Colors.blue,
                                                  ))),
                                        )),
                                  ),
                                  Container(
                                    alignment: Alignment.centerRight,
                                    margin: const EdgeInsets.only(top: 5),
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                          textStyle:
                                              const TextStyle(fontSize: 14),
                                        ),
                                        onPressed: () => Get.offAllNamed(
                                            Routes.GANTIPASSWORD),
                                        child: Text(
                                          'Lupa Password?',
                                          style: TextStyle(
                                              // color: Colors.green[700],
                                              color: Colors.black,
                                              decoration:
                                                  TextDecoration.underline),
                                        )),
                                  ),
                                ])),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                              width: 150,
                              height: 60,
                              child: ElevatedButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Color(0xff1AD443)),
                                onPressed: () => Get.offAllNamed(Routes.HOME),
                                child: const Text(
                                  'Login',
                                  style: TextStyle(fontSize: 20),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Butuh Bantuan?'),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Hubungi Kami',
                                style: TextStyle(color: Colors.yellow[800]),
                              ))
                        ],
                      )),
                ],
              )
            ]),
          ),
        ),
      ]),
    );
  }
}

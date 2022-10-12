import 'package:digital_sampah/app/models/controller/hidepassword_controller.dart';
import 'package:digital_sampah/app/routes/app_pages.dart';
import 'package:digital_sampah/widgets/succeschangepassword.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class GantiPasswordView extends GetView {
  final password1 = Get.put(HidePasswordController2());
  final password2 = Get.put(HidePasswordController3());

  @override
  Widget build(BuildContext context) {
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
              // leading: ElevatedButton(
              //     style: TextButton.styleFrom(
              //       backgroundColor: Colors.transparent,
              //     ),
              //     onPressed: () => Get.,
              //     child: Icon(
              //       Icons.arrow_circle_left_outlined,
              //       color: Colors.black,
              //     )),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            Column(children: [
              Container(
                margin: const EdgeInsets.only(top: 80, bottom: 40),
                alignment: Alignment.topCenter,
                child: Text(
                  'Ganti Password',
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
                              // Password Baru field
                              passwordBaru(),
                              //Confirm Password Field
                              confirmPassword(),
                            ]),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 80),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            width: 150,
                            height: 60,
                            child: ElevatedButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Color(0xff1AD443)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SuccesChangePassword()));
                              },
                              child: const Text(
                                'Change',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ]),
          ]),
    );
  }

  passwordBaru() {
    return Container(
        margin: const EdgeInsets.only(bottom: 15),
        child: Column(children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(bottom: 10),
            child: const Text(
              'Password Baru',
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
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Obx(() => TextField(
                  obscureText: password1.password.passwordverify.value,
                  autofocus: false,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      hintText: 'Input Password Baru',
                      suffixIcon: GestureDetector(
                          onTap: () {
                            password1.togglePasswordVisibility2();
                          },
                          child: Icon(
                            password1.password.passwordverify.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: password1.password.passwordverify.value
                                ? Colors.grey
                                : Colors.blue,
                          ))),
                )),
          ),
        ]));
  }

  confirmPassword() {
    return Container(
        margin: const EdgeInsets.only(bottom: 15),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                'Confirm Password',
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
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Obx(() => TextField(
                    obscureText: password2.password.passwordverify.value,
                    autofocus: false,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        hintText: 'Confirm Password',
                        suffixIcon: GestureDetector(
                            onTap: () {
                              password2.togglePasswordVisibility3();
                            },
                            child: Icon(
                              password2.password.passwordverify.value
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: password2.password.passwordverify.value
                                  ? Colors.grey
                                  : Colors.blue,
                            ))),
                  )),
            )
          ],
        ));
  }
}

import 'package:digital_sampah/app/models/account.dart';
import 'package:digital_sampah/app/models/controller/account_contoller.dart';
import 'package:digital_sampah/app/models/controller/hidepassword_controller.dart';
import 'package:digital_sampah/app/modules/home_page/views/home_page_view.dart';
import 'package:digital_sampah/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final passwordC = Get.put(HidePasswordController1());
  final accountC = Get.put(AccountController());
  final Username = '';
  final Password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff1AD443),
      body: Column(children: [
        //Logo Bank Sampah
        logo(),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.white, blurRadius: 5)],
              color: Colors.grey[100],
              borderRadius:
                  BorderRadiusDirectional.only(topStart: Radius.circular(50)),
            ),
            child: Stack(fit: StackFit.expand, children: [
              Column(
                children: [
                  //Tanda Selamat Datang
                  welcome(),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
                    // color: Colors.red,
                    child: Column(children: [
                      //Username Field
                      username(),
                      //Password Field
                      password(),
                      //tombol Login
                      tombol(context)
                    ]),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  //Konntak Bantuan
                  helpCenter(context)
                ],
              )
            ]),
          ),
        ),
      ]),
    );
  }

  logo() {
    return Container(
      margin: const EdgeInsets.only(top: 80, bottom: 40),
      alignment: Alignment.topCenter,
      // color: Colors.black,
      child: SizedBox(
        width: Get.width * 0.4,
        height: Get.width * 0.4,
        child: Image.asset("assets/logo/logo.png"),
      ),
    );
  }

  welcome() {
    return Container(
      alignment: Alignment.topCenter,
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: const Text(
        'Selamat Datang',
        style: TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }

  username() {
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
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0.0, 0.5),
                      color: Colors.black,
                      blurStyle: BlurStyle.outer)
                ],
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: TextField(
                // onSubmitted: (username) {
                //   accountC.verify.value?
                // },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  hintText: 'Input Username',
                  focusColor: Colors.white,
                ),
              )),
        ]));
  }

  password() {
    return Container(
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
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Obx(() => TextField(
                  obscureText: passwordC.password.passwordverify.value,
                  autofocus: false,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      hintText: 'Input Password',
                      suffixIcon: GestureDetector(
                          onTap: () {
                            passwordC.togglePasswordVisibility1();
                          },
                          child: Icon(
                            passwordC.password.passwordverify.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: passwordC.password.passwordverify.value
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
                  textStyle: const TextStyle(fontSize: 14),
                ),
                onPressed: () => Get.toNamed(Routes.LUPA_PASSWORD),
                child: Text(
                  'Lupa Password?',
                  style: TextStyle(
                      // color: Colors.green[700],
                      color: Colors.black,
                      decoration: TextDecoration.underline),
                )),
          ),
        ]));
  }

  tombol(context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25))),
      width: 150,
      height: 60,
      child: ElevatedButton(
        style: TextButton.styleFrom(backgroundColor: Color(0xff1AD443)),
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        // onPressed: () {
        //   accountC.isset();
        // },
        child: const Text(
          'Login',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  helpCenter(context) {
    return Container(
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
        ));
  }
}

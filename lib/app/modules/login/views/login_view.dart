import 'package:digital_sampah/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final loginC = LoginController();

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
            child: Obx(
              () => Stack(fit: StackFit.expand, children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 25),
                      child: SizedBox(
                        height: 40,
                        width: 90,
                        child: ElevatedButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.blue),
                          onPressed: () {
                            (loginC.role.value == "Nasabah"
                                ? loginC.changeToPetugas()
                                : loginC.changeToNasabah());
                          },
                          child: Text((loginC.role.value == "Nasabah"
                              ? "Petugas"
                              : "Nasabah")),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    //Tanda Selamat Datang
                    welcome(),
                    Container(
                      alignment: Alignment.topCenter,
                      margin:
                          const EdgeInsets.only(top: 40, left: 30, right: 30),
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
                    //Kon)ntak Bantuan
                    helpCenter(context, loginC.kontakBantuan)
                  ],
                )
              ]),
            ),
          ),
        )
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
      child: Text(
        loginC.role.value,
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
                controller: loginC.usernameC,
                keyboardType: TextInputType.number,
                onChanged: (inputUsername) {
                  loginC.inputUsername(inputUsername);
                },
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
            child: TextField(
              controller: loginC.passwordC,
              obscureText: loginC.passwordverify.value,
              autofocus: false,
              keyboardType: TextInputType.visiblePassword,
              onChanged: (inputPassword) {
                loginC.inputPassword(inputPassword);
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  hintText: 'Input Password',
                  suffixIcon: GestureDetector(
                      onTap: () {
                        loginC.togglePasswordVisibility();
                      },
                      child: Icon(
                        loginC.passwordverify.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: loginC.passwordverify.value
                            ? Colors.grey
                            : Colors.blue,
                      ))),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.only(top: 5),
            child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 14),
                ),
                onPressed: () => Get.toNamed(Routes.LUPA_PASSWORD,
                    arguments: loginC.role.value),
                child: Text(
                  'Lupa Password?',
                  style: TextStyle(
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
          loginC.loginRoute(context);
        },
        child: const Text(
          'Login',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  helpCenter(context, List<Map<String, dynamic>> listkontak) {
    return Container(
        margin: EdgeInsets.only(bottom: 30),
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

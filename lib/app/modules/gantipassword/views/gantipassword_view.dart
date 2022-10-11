import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/gantipassword_controller.dart';

class GantipasswordView extends GetView<GantipasswordController> {
  const GantipasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          alignment: Alignment.topCenter,
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              'assets/images/background.png',
              // width: Get.width * 1.5,
              fit: BoxFit.fill,
            ),
            AppBar(
              leading: ElevatedButton(
                onPressed: () => Get.offAllNamed(Routes.LOGIN),
                child: Image.asset(
                  'assets/icons/profil.png',
                ),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            Column(children: [
              Container(
                margin: const EdgeInsets.only(top: 100, bottom: 50),
                alignment: Alignment.topCenter,
                child: Text(
                  'Ubah Kata Sandi',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
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
                      Column(),
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
                              onPressed: () => Get.offAllNamed(Routes.HOME),
                              child: const Text(
                                'Konfirmasi',
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
}

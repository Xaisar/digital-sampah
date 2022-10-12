import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app/routes/app_pages.dart';

class SuccesChangePassword extends StatelessWidget {
  const SuccesChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.green[100],
          body: Stack(fit: StackFit.expand, children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 40),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  width: Get.width * 0.8,
                  height: 50,
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xff1AD443)),
                    onPressed: () => Get.offAllNamed(Routes.LOGIN),
                    child: const Text(
                      'Ok',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: Get.width * 0.9,
                  height: Get.width * 0.9,
                  //vector succes
                  child: Image.asset(""),
                ),
                // Text('Bank Sampah Digital',
                //     style: TextStyle(
                //         color: Colors.white,
                //         fontWeight: FontWeight.bold,
                //         fontSize: 24))
              ],
            ),
          ])),
    );
  }
}

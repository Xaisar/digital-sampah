import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xff1AD443),
          body: Stack(fit: StackFit.expand, children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Politeknik Negeri Banyuwangi',
                  textAlign: TextAlign.center,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: Get.width * 0.5,
                  height: Get.width * 0.5,
                  child: Image.asset("assets/logo/logo2.png"),
                ),
              ],
            ),
          ])),
    );
  }
}

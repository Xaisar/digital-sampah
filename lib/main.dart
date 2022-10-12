import 'package:digital_sampah/app/modules/home_page/views/home_page_view.dart';
import 'package:digital_sampah/pembayaran/pembayran_pln.dart';
import 'package:digital_sampah/widgets/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: PembayaranListrik(),//HomePage(),
    );
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 5)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SplashScreen();
        } else {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Bank Sampah Digital",
            initialRoute: Routes.LOGIN,
            getPages: AppPages.routes,
          );
        }
      },
    );
  }
}

import 'package:digital_sampah/app/modules/Pengambilan/views/detail_pengambilan_view.dart';
import 'package:digital_sampah/app/modules/Pengambilan/views/pengambilan_view.dart';
import 'package:digital_sampah/app/modules/bantuan/views/bantuan_view.dart';
import 'package:digital_sampah/app/modules/home_page/views/home_page_view.dart';
import 'package:digital_sampah/app/modules/home_petugas/views/home_petugas_view.dart';
import 'package:digital_sampah/app/modules/jadwal/views/jadwal_view.dart';
import 'package:digital_sampah/app/modules/pemayaran/views/pemayaran_view.dart';
import 'package:digital_sampah/app/modules/riwayatPengambilan/views/riwayat_pengambilan_view.dart';
import 'package:digital_sampah/app/modules/transaksi/views/transaksi_view.dart';
import 'package:digital_sampah/app/modules/Pengambilan/views/form_pengambilan_view.dart';
import 'package:digital_sampah/ujicoba.dart';
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
      home: RiwayatPengambilanView(),
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

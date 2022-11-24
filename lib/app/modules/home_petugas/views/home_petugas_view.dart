import 'package:digital_sampah/app/modules/pemayaran/views/pemayaran_view.dart';
import 'package:digital_sampah/app/modules/report/views/report_view.dart';
import 'package:digital_sampah/app/routes/app_pages.dart';
import 'package:digital_sampah/component/card_title.dart';
import 'package:digital_sampah/component/my_button.dart';
import 'package:digital_sampah/component/my_card.dart';
import 'package:digital_sampah/component/news.dart';
import 'package:digital_sampah/widgets/pageDevelope.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../controllers/home_petugas_controller.dart';

class HomePetugasView extends StatefulWidget {
  const HomePetugasView({super.key});

  @override
  State<HomePetugasView> createState() => _HomePetugasViewState();
}

class _HomePetugasViewState extends State<HomePetugasView> {
  //page controller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBF9EE),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //appbarr
            Container(
                margin: EdgeInsets.only(top: 30), child: SizedBox(height: 30)),
            //cards
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    // color1: Colors.green[400],
                    Nama: "Ariel Isad",
                    User: "",
                    Ttl: "Banyuwangi, 23 April 2002",
                    Alamat: "Dusun Tambong",
                    TitleHariPenjemputan: "Rt02/Rw03",
                    TanggalJoin: "Link. Krajan Wetan",
                    iconUser: "assets/icons/logo.png",
                  ),
                  MyCard(
                    // color1: Colors.green[400],
                    Nama: "Petugas",
                    User: "",
                    Ttl: "Banyuwangi, 23 April 2002",
                    Alamat: "Dusun Tambong",
                    TitleHariPenjemputan: "Cek Berkala Untuk Jadwal",
                    TanggalJoin: "Penjemputan Sampah",
                    iconUser: "assets/icons/logo.png",
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            SmoothPageIndicator(
              controller: _controller,
              count: 2,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
            ),
            SizedBox(height: 20),
            //3 buttons -> send + pay +bill
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //sendbutton
                  MyButton(
                    iconImagePath: "assets/icons/send.png",
                    butoonText: "   Harga \n Sampah",
                    onPressed: () {
                      Get.toNamed(Routes.HARGA_SAMPAH);
                    },
                  ),
                  //paybutton
                  MyButton(
                    iconImagePath: "assets/icons/riwayat.png",
                    butoonText: "Riwayat",
                    onPressed: () {
                      Get.toNamed(Routes.RIWAYAT);
                    },
                  ),
                  //bills button
                  MyButton(
                    iconImagePath: "assets/icons/mobile-transfer.png",
                    butoonText: "Transaksi",
                    onPressed: () {
                      Get.to(() => PemayaranView());
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //sendbutton
                  MyButton(
                    iconImagePath: "assets/icons/statistics.png",
                    butoonText: "Statistik",
                    onPressed: () {
                      Get.to(() => PageDevelope());
                    },
                  ),
                  //paybutton
                  MyButton(
                    iconImagePath: "assets/icons/bantuan.png",
                    butoonText: "Bantuan",
                    onPressed: () {
                      Get.toNamed(Routes.BANTUAN);
                    },
                  ),
                  //bills button
                  MyButton(
                    iconImagePath: "assets/icons/sheet.png",
                    butoonText: "Report",
                    onPressed: () {
                      Get.to(() => Report());
                    },
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 24,
                  ),

                  Container(
                    child: Column(
                      children: [
                        //statistics
                        News(
                            IconImagePath: "assets/images/10.jpg",
                            Judul: "",
                            TitleText: ""),
                      ],
                    ),
                  ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:digital_sampah/app/modules/pemayaran/views/pemayaran_view.dart';
import 'package:digital_sampah/app/modules/report/views/report_view.dart';
import 'package:digital_sampah/component/card_title.dart';
import 'package:digital_sampah/component/my_button.dart';
import 'package:digital_sampah/component/my_card.dart';
import 'package:digital_sampah/component/my_listtile.dart';
import 'package:digital_sampah/component/news.dart';
import 'package:digital_sampah/theme.dart';
import 'package:digital_sampah/widgets/pageDevelope.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_page_controller.dart';

class HomePage extends GetView<HomePageController> {
  HomePage({super.key});

  //page controller
  final _controller = PageController();

  final homeNasabahC = HomePageController();

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
                  MyCards(
                    balance: homeNasabahC.isinasabah[0]['saldo'],
                    cardNumber: '007',
                    Dawis1: "Dawis" + homeNasabahC.isinasabah[0]['dawis'],
                    // color: Colors.deepPurple[300],
                  ),
                  MyCard(
                    // color1: Colors.green[400],
                    Nama: homeNasabahC.isinasabah[0]['nama'],
                    User: "",
                    Ttl: homeNasabahC.isinasabah[0]['tanggalLahir'],
                    Alamat: homeNasabahC.isinasabah[0]['alamat'],
                    TitleHariPenjemputan: "Pengambilan Sampah Hari Juma't",
                    TanggalJoin: homeNasabahC.isinasabah[0]['tanggalMasuk'],
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
                    butoonText: " Harga \n Sampah",
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
                    iconImagePath: "assets/icons/sheet.png",
                    butoonText: "Report",
                    onPressed: () {
                      Get.to(() => Report());
                    },
                  ),
                  MyButton(
                    iconImagePath: "assets/icons/shutdown.png",
                    butoonText: "Keluar",
                    onPressed: () {
                      Get.offAllNamed(Routes.LOGIN);
                    },
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  //GopayLater
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Reuse Reduce Recycle!',
                          style: bold16.copyWith(color: dark1),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Yuk, Jaga Lingkungan Kita Dengan Mengumpulkan Sampah Menjadi Pundi Rupiah dan Ikuti Event Yang Diselenggarakan Oleh Desa Untuk Warga Tercinta!',
                          style: regular14.copyWith(color: dark2),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 24,
                  ),

                  Container(
                    child: Column(
                      children: [
                        //statistics
                        News(
                            IconImagePath: "assets/images/10.jpg",
                            Judul: "Sosialisisai Pemilihan Sampah!",
                            TitleText:
                                "sampah merupakan masalah yang umum dihadapi oleh masyarakat pada umumnya. Sampah yang tidak terkelola dengan baik akan menjadi tempat berkembangbiaknya kuman penyakit serta vektor penyakit."),
                        //transaction
                        SizedBox(height: 15),
                        News(
                            IconImagePath: "assets/images/10.jpg",
                            Judul: "Sosialisisai Pemilihan Sampah!",
                            TitleText:
                                "sampah merupakan masalah yang umum dihadapi oleh masyarakat pada umumnya. Sampah yang tidak terkelola dengan baik akan menjadi tempat berkembangbiaknya kuman penyakit serta vektor penyakit."),
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

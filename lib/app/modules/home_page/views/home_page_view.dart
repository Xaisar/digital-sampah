import 'package:digital_sampah/app/modules/pemayaran/views/pemayaran_view.dart';
import 'package:digital_sampah/component/card_title.dart';
import 'package:digital_sampah/component/my_button.dart';
import 'package:digital_sampah/component/my_card.dart';
import 'package:digital_sampah/component/my_listtile.dart';
import 'package:digital_sampah/component/news.dart';
import 'package:digital_sampah/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_page_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  MyCards(
                    balance: 258543,
                    cardNumber: 3213125205680006,
                    Dawis1: "Dawis001",
                    // color: Colors.deepPurple[300],
                  ),
                  MyCard(
                      color1: Colors.green[400],
                      Nama: "Mohamad Aji Hermansya",
                      User: "Anggota",
                      Ttl: "Banyuwangi, 23 Februari 2004",
                      Alamat: "Dusun Tambong",
                      TitleHariPenjemputan: "Hari Juma't",
                      TanggalJoin: "23/01/2010"),
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
                    butoonText: "Harga Sampah",
                    route: Routes.HARGA_SAMPAH,
                  ),
                  //paybutton
                  MyButton(
                    iconImagePath: "assets/icons/riwayat.png",
                    butoonText: "Riwayat",
                 route: Routes.RIWAYAT,
                  ),
                  //bills button
                  MyButton(
                    iconImagePath: "assets/icons/listrik.png",
                    butoonText: "Listrik",
                     onPressed: (){Get.to(() => PemayaranView()); },
                  ),
                ],
              ),
            ),

            SizedBox(height: 13),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //sendbutton
                  MyButton(
                    iconImagePath: "assets/icons/air.png",
                    butoonText: "Air",
                     onPressed: (){Get.to(() => PemayaranView()); },
                  ),
                  //paybutton
                  MyButton(
                    iconImagePath: "assets/icons/pbb.png",
                    butoonText: "PBB",
                     onPressed: (){Get.to(() => PemayaranView()); },
                  ),
                  //bills button
                  MyButton(
                    iconImagePath: "assets/icons/bantuan.png",
                    butoonText: "Bantuan",
                     route: Routes.BANTUAN,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            //column -> stats + transaction

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                // width: 300,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    //statistics
                    MyListTile(
                      iconImagePath: "assets/icons/statistics.png",
                      tileName: "Statistics",
                      tileSubName: "Payments and Icome",
                      route: Routes.STATISTIKNASABAH,
                    ),
                    //transaction
                    // SizedBox(height: 10),
                    Divider(
                      color: Colors.grey[700],
                    ),
                    MyListTile(
                      iconImagePath: "assets/icons/mobile-transfer.png",
                      tileName: "Transactions",
                      tileSubName: "Transaction History",
                      route: Routes.TRANSAKSI,
                    ),
                  ],
                ),
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
                        // Image.asset(
                        //   'assets/images/event.png',
                        //   height: 60,
                        // ),
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
                            IconImagePath: "assets/images/1.png",
                            Judul: "Sosialisisai Pemilihan Sampah!",
                            TitleText:
                                "sampah merupakan masalah yang umum dihadapi oleh masyarakat pada umumnya. Sampah yang tidak terkelola dengan baik akan menjadi tempat berkembangbiaknya kuman penyakit serta vektor penyakit."),
                        //transaction
                        SizedBox(height: 15),
                        News(
                            IconImagePath: "assets/images/1.png",
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

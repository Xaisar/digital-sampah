import 'package:digital_sampah/component/card_title.dart';
import 'package:digital_sampah/component/my_button.dart';
import 'package:digital_sampah/component/my_card.dart';
import 'package:digital_sampah/component/my_listtile.dart';
import 'package:digital_sampah/models/news.dart';
import 'package:digital_sampah/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "My",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Cards",
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  //plus butto
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(4),
                      primary: Color(0xFFEBF9EE),
                      shape: new CircleBorder(),
                    ),
                    onPressed: () {},
                    child: Icon(Icons.logout),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
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
                    color: Colors.deepPurple[300],
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
                    butoonText: "Rupiah",
                  ),
                  //paybutton
                  MyButton(
                    iconImagePath: "assets/icons/credit-card.png",
                    butoonText: "Riwayat",
                  ),
                  //bills button
                  MyButton(
                    iconImagePath: "assets/icons/bill.png",
                    butoonText: "PLN",
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
                    iconImagePath: "assets/icons/send.png",
                    butoonText: "Air",
                  ),
                  //paybutton
                  MyButton(
                    iconImagePath: "assets/icons/credit-card.png",
                    butoonText: "PBB",
                  ),
                  //bills button
                  MyButton(
                    iconImagePath: "assets/icons/bill.png",
                    butoonText: "Bantuan",
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            //column -> stats + transaction
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //statistics
                  MyListTile(
                    iconImagePath: "assets/icons/statistics.png",
                    tileName: "Statistics",
                    tileSubName: "Payments and Icome",
                  ),
                  //transaction
                  SizedBox(height: 10),
                  MyListTile(
                    iconImagePath: "assets/icons/mobile-transfer.png",
                    tileName: "Transactions",
                    tileSubName: "Transaction History",
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
                        Image.asset(
                          'assets/images/gopaylater.png',
                          height: 14,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Lebih hemat pake GoPayLater 🤩',
                          // style: bold16.copyWith(color: dark1),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Yuk, belanja di Tokopedia pake GoPay Later dan nikmatin cashback-nya~',
                          // style: regular14.copyWith(color: dark2),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 24,
                  ),

                  //News
                  // ...News.map((item) => Padding(
                  //         padding: const EdgeInsets.only(bottom: 24, left: 16, right: 16),
                  //         child: Container(
                  //           clipBehavior: Clip.hardEdge,
                  //           decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(15),
                  //               border: Border.all(color: dark4)),
                  //           child: Column(
                  //             children: [
                  //               Image.asset('assets/images/${item.image}'),
                  //               Padding(
                  //                 padding: const EdgeInsets.all(24),
                  //                 child: Column(
                  //                   crossAxisAlignment: CrossAxisAlignment.start,
                  //                   children: [
                  //                     Text(
                  //                       item.title,
                  //                       style: bold16.copyWith(color: dark1),
                  //                     ),
                  //                     const SizedBox(
                  //                       height: 8,
                  //                     ),
                  //                     Text(
                  //                       item.description,
                  //                       style: regular14.copyWith(color: dark2),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               )
                  //             ],
                  //           ),
                  //         ),
                  //       ),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

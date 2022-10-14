import 'package:digital_sampah/app/modules/home_page/views/home_page_view.dart';
import 'package:digital_sampah/app/modules/paymentpage/views/paymentpage_view.dart';
import 'package:digital_sampah/colors.dart';
import 'package:digital_sampah/component1/listbiils.dart';
import 'package:digital_sampah/component1/large_buotom.dart';
import 'package:digital_sampah/component1/treebotton.dart';
import 'package:digital_sampah/widgets/text_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PemayaranView extends StatefulWidget {
  const PemayaranView({Key? key}) : super(key: key);

  @override
  State<PemayaranView> createState() => _PemayaranViewState();
}

class _PemayaranViewState extends State<PemayaranView> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        height: h,
        // width: w,
        child: Stack(
          children: [
            // Image.asset(
            //   'assets/images/backgroundLupaPassword.png',
            //   fit: BoxFit.fill,
            // ),
            _headSection(),
            Bills(
                IconBiils1: "assets/icons/listrik.png",
                Text1: "Pembayaran Listrik",
                Tanggungan1: 780000,
                Info1: "Bulan Juni",
                IconBiils2: "assets/icons/air.png",
                Text2: "Pembayaran Air",
                Tanggungan2: 20000,
                Info2: "Bulan Juni",
                IconBiils3: "assets/icons/pbb.png",
                Text3: "Pembayaran Pajak Bangunan",
                Tanggungan3: 45000,
                Info3: "Lunas"),
            _payButtom(),
          ],
        ),
      ),
    );
  }

  _headSection() {
    return Container(
      height: 100, //55

      child: Stack(
        children: [
          _mainBackground(),
          _curveImageContainer(),
          _buttomContainer(),
          _textContainer(),
        ],
      ),
    );
  }

  _buttomContainer() {
    return Positioned(
        right: 50,
        bottom: 10,
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet<dynamic>(
                isScrollControlled: true,
                barrierColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                context: context,
                builder: (BuildContext bc) {
                  return Container(
                    height: MediaQuery.of(context).size.height - 50,
                    child: Stack(
                      children: [
                        Positioned(
                            bottom: 0,
                            child: Container(
                              color: Color(0xFFeef1f4).withOpacity(0.7),
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height - 120,
                            )),
                        Positioned(
                            right: 50,
                            child: Container(
                              padding:
                                  const EdgeInsets.only(top: 5, bottom: 25),
                              width: 48,
                              height: 200,
                              decoration: BoxDecoration(
                                color: AppColor.tilegreen,
                                borderRadius: BorderRadius.circular(29),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AppButtons(
                                    icon: Icons.cancel,
                                    iconColor: AppColor.maingreen,
                                    textColor: Colors.white,
                                    backGroundColor: Colors.white,
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                  AppButtons(
                                    icon: Icons.home,
                                    iconColor: AppColor.maingreen,
                                    textColor: AppColor.mainColor,
                                    backGroundColor: Colors.white,
                                    onTap: () {
                                      Get.to(() => HomePage());
                                    },
                                    text: "Home",
                                  ),
                                  AppButtons(
                                    icon: Icons.history,
                                    iconColor: AppColor.maingreen,
                                    textColor: AppColor.mainColor,
                                    backGroundColor: Colors.white,
                                    onTap: () {},
                                    text: "Riwayat",
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  );
                });
          },
          child: Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/lines1.png")),
              boxShadow: [
                BoxShadow(
                  blurRadius: (15),
                  offset: Offset(0, -1),
                  color: Color(0xFF11324d).withOpacity(0.2),
                ),
              ],
            ),
          ),
        ));
  }

  _mainBackground() {
    return Positioned(
        bottom: 10,
        left: 0,
        child: Container(
          height: 90,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/bank_sampah.png")),
          ),
        ));
  }

  _curveImageContainer() {
    return Positioned(
      left: 0,
      right: -2,
      bottom: 10,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/images/curve.png")),
        ),
      ),
    );
  }

  _payButtom() {
    return Positioned(
        bottom: 10,
        child: AppLargeButton(
          text: "Bayar",
          textColor: Colors.white,
          onTap: () {
            Get.to(() => PaymentpageView());
          },
        ));
  }

//tulisan diatas
  _textContainer() {
    return Stack(
      children: [
        Positioned(
            left: 30,
            top: 0,
            child: Text(
              "",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )),
        Positioned(
            left: 0,
            top: 50,
            child: Text(
              "Laman Pembayaran",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            )),
      ],
    );
  }
}

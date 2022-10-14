import 'package:digital_sampah/colors.dart';
import 'package:digital_sampah/component1/large_buotom.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/paymentpage_controller.dart';

class PaymentpageView extends GetView<PaymentpageController> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
        height: h,
        width: w,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/background_bayar.png")),
        ),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: h * 0.14,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage("assets/images/success.png")),
              ),
            ),
            Text(
              "Sukses !",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppColor.mainColor,
              ),
            ),
            Text(
              "Pembayaran Anda Sedang Diproses",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: AppColor.idColor,
              ),
            ),
            SizedBox(height: h * 0.045),
            Container(
              height: 160,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 2,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView(
                  children: [
                    Column(
                      children: [
                        Container(
                          //bisa si hapus di atas
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                      top: 10,
                                      left: 15,
                                      bottom: 10,
                                    ),
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.green),
                                    child: Icon(Icons.done,
                                        size: 30, color: Colors.white),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Listrik Pasca Bayar",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: AppColor.mainColor,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Transaksi Direkam",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: AppColor.idColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 7),
                                  Column(
                                    children: [
                                      Text(
                                        "",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: AppColor.mainColor,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Rp 120000",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: AppColor.mainColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 2,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 2),
            Column(
              children: [
                Text(
                  "Total Pembayaran",
                  style: TextStyle(
                    fontSize: 17,
                    color: AppColor.idColor,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  "Rp 326000",
                  style: TextStyle(
                    fontSize: 22,
                    color: AppColor.mainColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Credit",
                      style: TextStyle(
                        fontSize: 17,
                        color: AppColor.idColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      " Rp 0,-",
                      style: TextStyle(
                        fontSize: 17,
                        color: AppColor.mainColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: h * 0.2),
            AppLargeButton(
              text: "Selesai",
              backgroundColor: Colors.white,
              textColor: AppColor.maingreen,
              onTap: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}

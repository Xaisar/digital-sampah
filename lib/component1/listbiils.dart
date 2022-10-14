import 'package:digital_sampah/colors.dart';
import 'package:digital_sampah/widgets/text_size.dart';
import 'package:flutter/material.dart';

class Bills extends StatelessWidget {
  final String IconBiils1;
  final String Text1;
  final double Tanggungan1;
  final String Info1;

  final String IconBiils2;
  final String Text2;
  final double Tanggungan2;
  final String Info2;

  final String IconBiils3;
  final String Text3;
  final double Tanggungan3;
  final String Info3;

  const Bills({
    super.key,
    required this.IconBiils1,
    required this.Text1,
    required this.Tanggungan1,
    required this.Info1,
    required this.IconBiils2,
    required this.Text2,
    required this.Tanggungan2,
    required this.Info2,
    required this.IconBiils3,
    required this.Text3,
    required this.Tanggungan3,
    required this.Info3,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 140,
      left: 0,
      right: 0,
      bottom: 0,
      child: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, right: 20),
              height: 130,
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFd8dbe0),
                    offset: Offset(1, 1),
                    blurRadius: 20.0,
                    spreadRadius: 10,
                  ),
                ],
              ),

              // pembuatan kolom dan baris
              child: Container(
                margin: const EdgeInsets.only(top: 10, left: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 2,
                                  color: Colors.grey,
                                ),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(IconBiils1)),
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(Text1,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.mainColor,
                                      fontWeight: FontWeight.w700,
                                    )),
                                SizedBox(height: 10),
                                //ID Nomor Pelanggan
                                Text("",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.idColor,
                                      fontWeight: FontWeight.w700,
                                    )),
                              ],
                            ),
                          ],
                        ),
                        SizedText(
                            text: "Saldo Anda Akan Terpotong Otomatis",
                            color: AppColor.green),
                        SizedBox(height: 5),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 80,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: AppColor.selectBackground),
                              child: Center(
                                child: Text(
                                  "Select",
                                  style: TextStyle(
                                    fontSize: (16),
                                    color: AppColor.selectColor,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(child: Container()),
                            Text(
                              "Rp" + Tanggungan1.toString(),
                              style: TextStyle(
                                fontSize: (18),
                                fontWeight: FontWeight.w900,
                                color: AppColor.mainColor,
                              ),
                            ),
                            Text(
                              Info1,
                              style: TextStyle(
                                fontSize: (14),
                                fontWeight: FontWeight.w700,
                                color: AppColor.idColor,
                              ),
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                        SizedBox(width: 5),
                        Container(
                          height: 35,
                          width: 5,
                          decoration: BoxDecoration(
                              color: AppColor.halfOval,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, right: 20),
              height: 130,
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFd8dbe0),
                    offset: Offset(1, 1),
                    blurRadius: 20.0,
                    spreadRadius: 10,
                  ),
                ],
              ),

              // pembuatan kolom dan baris
              child: Container(
                margin: const EdgeInsets.only(top: 10, left: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 2,
                                  color: Colors.grey,
                                ),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(IconBiils2)),
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(Text1,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.mainColor,
                                      fontWeight: FontWeight.w700,
                                    )),
                                SizedBox(height: 10),
                                //ID Nomor Pelanggan
                                Text("",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.idColor,
                                      fontWeight: FontWeight.w700,
                                    )),
                              ],
                            ),
                          ],
                        ),
                        SizedText(
                            text: "Saldo Anda Akan Terpotong Otomatis",
                            color: AppColor.green),
                        SizedBox(height: 5),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 80,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: AppColor.selectBackground),
                              child: Center(
                                child: Text(
                                  "Select",
                                  style: TextStyle(
                                    fontSize: (16),
                                    color: AppColor.selectColor,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(child: Container()),
                            Text(
                              "Rp" + Tanggungan2.toString(),
                              style: TextStyle(
                                fontSize: (18),
                                fontWeight: FontWeight.w900,
                                color: AppColor.mainColor,
                              ),
                            ),
                            Text(
                              Info2,
                              style: TextStyle(
                                fontSize: (14),
                                fontWeight: FontWeight.w700,
                                color: AppColor.idColor,
                              ),
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                        SizedBox(width: 5),
                        Container(
                          height: 35,
                          width: 5,
                          decoration: BoxDecoration(
                              color: AppColor.halfOval,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, right: 20),
              height: 130,
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFd8dbe0),
                    offset: Offset(1, 1),
                    blurRadius: 20.0,
                    spreadRadius: 10,
                  ),
                ],
              ),

              // pembuatan kolom dan baris
              child: Container(
                margin: const EdgeInsets.only(top: 10, left: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 2,
                                  color: Colors.grey,
                                ),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(IconBiils3)),
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(Text1,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.mainColor,
                                      fontWeight: FontWeight.w700,
                                    )),
                                SizedBox(height: 10),
                                //ID Nomor Pelanggan
                                Text("",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.idColor,
                                      fontWeight: FontWeight.w700,
                                    )),
                              ],
                            ),
                          ],
                        ),
                        SizedText(
                            text: "Saldo Anda Akan Terpotong Otomatis",
                            color: AppColor.green),
                        SizedBox(height: 5),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 80,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: AppColor.selectBackground),
                              child: Center(
                                child: Text(
                                  "Select",
                                  style: TextStyle(
                                    fontSize: (16),
                                    color: AppColor.selectColor,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(child: Container()),
                            Text(
                              "Rp" + Tanggungan3.toString(),
                              style: TextStyle(
                                fontSize: (18),
                                fontWeight: FontWeight.w900,
                                color: AppColor.mainColor,
                              ),
                            ),
                            Text(
                              Info3,
                              style: TextStyle(
                                fontSize: (14),
                                fontWeight: FontWeight.w700,
                                color: AppColor.idColor,
                              ),
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                        SizedBox(width: 5),
                        Container(
                          height: 35,
                          width: 5,
                          decoration: BoxDecoration(
                              color: AppColor.halfOval,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

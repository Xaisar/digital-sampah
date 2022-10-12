import 'package:digital_sampah/colors.dart';
import 'package:digital_sampah/widgets/text_size.dart';
import 'package:flutter/material.dart';

class PembayaranListrik extends StatefulWidget {
  const PembayaranListrik({Key? key}) : super(key: key);

  @override
  State<PembayaranListrik> createState() => _PembayaranListrikState();
}

class _PembayaranListrikState extends State<PembayaranListrik> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        height: h,
        child: Stack(
          children: [
            _headSection(),
            _listBills(),
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
        ],
      ),
    );
  }

  _buttomContainer() {
    return Positioned(
        right: 50,
        bottom: 10,
        child: Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage("assets/images/lines.png")),
            boxShadow: [
              BoxShadow(
                blurRadius: (15),
                offset: Offset(0, -1),
                color: Color(0xFF11324d).withOpacity(0.2),
              ),
            ],
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
        // height: 60,
        // padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/images/curve.png")),
        ),
      ),
    );
  }

//listbiils
  _listBills() {
    return Positioned(
        top: 110,
        child: Container(
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
                                image: AssetImage("assets/icons/listrik.png")),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Pembayaran Listrisk",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColor.mainColor,
                                  fontWeight: FontWeight.w700,
                                )),
                            SizedBox(height: 10),
                            //ID Nomor Pelanggan
                            Text("ID:782783976",
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
                          "Rp 145.000",
                          style: TextStyle(
                            fontSize: (18),
                            fontWeight: FontWeight.w900,
                            color: AppColor.mainColor,
                          ),
                        ),
                        Text(
                          "Due in 3 days",
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
        ));
  }
}

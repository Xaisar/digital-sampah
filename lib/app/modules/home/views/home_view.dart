import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: RichText(
          text: TextSpan(
            text: "Hai, ",
            style: TextStyle(
              fontSize: 18,
            ),
            children: [
              TextSpan(
                text: "Mohamad Aji Hermansya",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
                margin: EdgeInsets.only(right: 15),
                width: 30,
                height: 30,
                child: Image.asset(
                  "assets/icons/profile.png",
                  fit: BoxFit.contain,
                )),
          ),
        ],
        backgroundColor: Color(0xFF1AD443),
        elevation: 0,
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 250,
              width: Get.width,
              color: Color(0xFF1AD443),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      // height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff1DBA3F),
                            Color(0xff025113),
                          ],
                        ),
                      ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "3213125205680006",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Dawis 001",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Saldo Anda",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Rp154.000",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Aktifitas",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffEAE509),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Divider(
                            color: Colors.black,
                          ),
                          SizedBox(height: 10),
                          RichText(
                            text: TextSpan(
                              text: "Pengambilan Sampah",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                              children: [
                                TextSpan(
                                  text: " Hari Jum'at",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Reuse, Reduce, Recycle",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(width: 5),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 7,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xffF7EC09),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text(
                                  "active",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 7,
                  color: Colors.grey[200],
                ),
                SizedBox(height: 10),
                // SizedBox(width:3),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Wrap(
                          runSpacing: 8,
                          alignment: WrapAlignment.spaceBetween,
                          children: [
                            for (final menuFavorite in menuFavorites)
                              Material(
                                  borderRadius: BorderRadius.circular(16),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: InkWell(
                                    splashColor:
                                        menuFavorite['color'].withOpacity(0.4),
                                    highlightColor:
                                        menuFavorite['color'].withOpacity(0.2),
                                    onTap: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 60,
                                            width: 60,
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                    height: 50,
                                                    width: 50,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          menuFavorite['color']
                                                              .withOpacity(0.4),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Image.asset(
                                                    'assets/place.png',
                                                    height: 50,
                                                    width: 50,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            menuFavorite['label'],
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                          ]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 98);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 98);
    path.lineTo(size.width, 0);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

final List<Map> menuFavorites = [
  {'label': 'Harga Sampah', 'image': '', 'color': Colors.green},
  {'label': 'Riwayat', 'image': '', 'color': Colors.green},
  {'label': 'Edukasi', 'image': '', 'color': Colors.red},
  {'label': 'PLN', 'image': '', 'color': Colors.green},
  {
    'label': 'Air', //
    'image': '',
    'color': Colors.red
  },
  {'label': 'PBB', 'image': '', 'color': Colors.blue},
  {'label': 'Kesehatan', 'image': '', 'color': Colors.blue},
  {'label': 'Bantuan', 'image': '', 'color': Colors.blue}
];

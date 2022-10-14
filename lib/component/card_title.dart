import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String Nama;
  final String User;
  final String Ttl;
  final String Alamat;
  final String TitleHariPenjemputan;
  final String TanggalJoin;
  // final color1;

  const MyCard({
    super.key,
    required this.Nama,
    required this.User,
    required this.Ttl,
    required this.Alamat,
    required this.TitleHariPenjemputan,
    required this.TanggalJoin,
    // required this.color1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      // padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff1DBA3F),
              Color(0xff025113),
            ],
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Nama,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            User,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              // fontStyle: FontStyle.italic,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        Ttl,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Alamat,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(
                        color: Colors.black,
                      ),
                      SizedBox(height: 5),
                      RichText(
                        text: TextSpan(
                          text: "Pengambilan Sampah ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          children: [
                            TextSpan(
                              text: TitleHariPenjemputan,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            TanggalJoin,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

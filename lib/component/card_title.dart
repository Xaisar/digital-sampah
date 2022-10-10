import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final int NIK_Nasabah;
  final double NoDawis;
  final double TitleSaldo;
  final String TitleHariPenjemputan;
  final color;
  final String TitleAnggota;
  const MyCard({super.key,
  required this.NIK_Nasabah,
  required this.NoDawis,
  required this.TitleSaldo,
  required this.TitleHariPenjemputan,
  required this.color,
  required this.TitleAnggota,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
      
                       child : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                NIK_Nasabah.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Dawis" + NoDawis.toString(),
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
                            "Total Saldo",
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
                                "\Rp" + TitleSaldo.toString(),
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
                                  primary: Color(0xffEAE509),
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
                                  color: color, //Color(0xffF7EC09),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text( TitleAnggota ,
                                  // "active" 
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
                SizedBox(height:10),
                SizedBox(width:3),
           ],
            ),
          );
                
     
  }
}
import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  final double balance;
  final String cardNumber;
  final String Dawis1;
  // final color;

  const MyCards({
    super.key,
    required this.balance,
    required this.cardNumber,
    required this.Dawis1,
    // required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          // color: color,
          gradient: LinearGradient(
               colors: [
                 Color(0xff1DBA3F),
                 Color(0xff025113), ], ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Saldo",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Anggota",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Text(
              "\RP " + balance.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //cardinformation
                Text(
                  cardNumber.toString(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                //cardexpiry
                Text(
                  Dawis1,
                  style: TextStyle(
                    color: Colors.white,
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

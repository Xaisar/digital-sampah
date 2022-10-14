import 'package:digital_sampah/app/models/transaction.dart';
import 'package:digital_sampah/colors.dart';
import 'package:digital_sampah/component1/treebotton.dart';
import 'package:digital_sampah/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/transaksi_controller.dart';

class Transaksi extends StatefulWidget {
  const Transaksi({super.key});

  @override
  State<Transaksi> createState() => _TransaksiState();
}

class _TransaksiState extends State<Transaksi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaksi Terkahir'),
        backgroundColor: Color(0xFF1AD443),
        centerTitle: false,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(
                    //     vertical: 30,
                    //     horizontal: 25,
                    //   ),
                    //   child: Row(
                    //     children: [
                    //       AppButtons(
                    //         icon: Icons.chevron_left_sharp,
                    //         iconColor: AppColor.mainColor,
                    //         backGroundColor: Colors.white,
                    //         onTap: () {},
                    //       ),
                    //       SizedBox(width: 5),
                    //       const Expanded(
                    //         child: Text(
                    //           "Transaksi Terakhir",
                    //           style: TextStyle(
                    //             fontSize: 18,
                    //             color: Color(0xFF3D538F),
                    //             fontWeight: FontWeight.bold,
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return TransactionItem(
                            transaction: transactions[index],
                          );
                        },
                        itemCount: transactions.length,
                      ),
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

// class TransaksiView extends GetView<TransaksiController> {
//   const TransaksiView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('TransaksiView'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Text(
//           'TransaksiView is working',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }

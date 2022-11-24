import 'package:digital_sampah/widgets/downloading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/report_controller.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text('Report Transaksi'),
        backgroundColor: Color(0xFF1AD443),
        centerTitle: false,
      ),
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              width: Get.width * 0.8,
              height: 50,
              child: ElevatedButton(
                style: TextButton.styleFrom(backgroundColor: Color(0xff1AD443)),
                onPressed: () => Get.back(),
                //  () => Get.back()
                child: const Text(
                  'Selesai',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: Get.width * 0.9,
              //vector succes
              child: Image.asset("assets/images/report.png"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: TextButton.styleFrom(backgroundColor: Color(0xff1AD443)),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const DownloadingDialog(),
                );
              },
              child: const Text(
                'Download',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

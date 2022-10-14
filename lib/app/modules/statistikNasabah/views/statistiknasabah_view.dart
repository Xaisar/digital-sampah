import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/statistiknasabah_controller.dart';

class StatistiknasabahView extends GetView<StatistiknasabahController> {
  const StatistiknasabahView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatistiknasabahView'),
        backgroundColor: Color(0xFF1AD443),
        centerTitle: false,
      ),
      body: Center(
        child: Text(
          'StatistiknasabahView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

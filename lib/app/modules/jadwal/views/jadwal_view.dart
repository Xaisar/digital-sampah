import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/jadwal_controller.dart';

class JadwalView extends GetView<JadwalController> {
  const JadwalView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JadwalView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'JadwalView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

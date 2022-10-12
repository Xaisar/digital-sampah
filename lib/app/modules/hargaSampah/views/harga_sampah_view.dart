import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/harga_sampah_controller.dart';

class HargaSampahView extends GetView<HargaSampahController> {
  const HargaSampahView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HargaSampahView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HargaSampahView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pengambilan_controller.dart';

class PengambilanView extends GetView<PengambilanController> {
  const PengambilanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PengambilanView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PengambilanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

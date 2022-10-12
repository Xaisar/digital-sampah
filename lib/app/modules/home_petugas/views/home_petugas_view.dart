import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_petugas_controller.dart';

class HomePetugasView extends GetView<HomePetugasController> {
  const HomePetugasView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePetugasView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HomePetugasView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

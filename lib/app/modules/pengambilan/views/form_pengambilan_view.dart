import 'package:flutter/material.dart';

import 'package:get/get.dart';

class FormPengambilanView extends GetView {
  const FormPengambilanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FormPengambilanView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FormPengambilanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

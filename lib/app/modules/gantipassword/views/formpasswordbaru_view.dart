import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/formpassworbaru_controller.dart';

class FormpasswordbaruView extends GetView<FormpassworbaruController> {
  const FormpasswordbaruView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FormpasswordbaruView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FormpasswordbaruView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

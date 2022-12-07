import 'package:digital_sampah/app/data/models/nasabah_model.dart';
import 'package:digital_sampah/app/data/models/petugas_model.dart';
import 'package:digital_sampah/app/data/models/user_model.dart';
import 'package:digital_sampah/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var role = "Nasabah".obs;
  TextEditingController usernameC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  var passwordverify = true.obs;
  var nasabah = Nasabah();
  var petugas = Petugas();
  var user = User();
  final List<Map<String, dynamic>> kontakBantuan = [
    {'Name': 'bpk. Man Kejoyo', 'Nomor': '+6282350599316'},
    {'Name': 'bpk. Agus Hermawan', 'Nomor': '+6281334111111'}
  ];

  @override
  void onClose() {
    super.onClose();
  }

  inputUsername(iUsername) {
    if (role == "Nasabah") {
      user.username = iUsername;
    } else if (role == "Petugas") {
      user.username = iUsername;
    }
  }

  inputPassword(iPassword) {
    if (role == "Nasabah") {
      user.password = iPassword;
    } else if (role == "Petugas") {
      user.password = iPassword;
    }
  }

  changeToNasabah() {
    role.value = "Nasabah";
    usernameC = TextEditingController(text: null);
    passwordC = TextEditingController(text: null);
    user.username = null;
    user.password = null;
  }

  changeToPetugas() {
    role.value = "Petugas";
    usernameC = TextEditingController(text: null);
    passwordC = TextEditingController(text: null);
    user.username = null;
    user.password = null;
  }

  loginRoute(context) {
    if (role == "Nasabah") {
      if (user.username == "Nasabah" && user.password == "Nasabah") {
        user.password = null;
        Get.toNamed(Routes.HOME_PAGE, arguments: nasabah);
      } else {
        errorDialog(context);
      }
    } else if (role == "Petugas") {
      if (user.username == "Petugas" && user.password == "Petugas") {
        user.password = null;
        Get.toNamed(Routes.HOME_PETUGAS, arguments: petugas);
      } else {
        errorDialog(context);
      }
    }
  }

  errorDialog(context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: Text('Maaf', style: TextStyle(fontSize: 20)),
              content: Text('Username dan Password anda salah',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
              icon: Icon(
                Icons.error,
                size: 70,
              ),
              iconColor: Colors.red);
        });
  }

  void togglePasswordVisibility() {
    passwordverify.value = !passwordverify.value;
  }
}

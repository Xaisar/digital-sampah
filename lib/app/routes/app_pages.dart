import 'package:get/get.dart';

import 'package:digital_sampah/app/modules/home/bindings/home_binding.dart';
import 'package:digital_sampah/app/modules/home/views/home_view.dart';
import 'package:digital_sampah/app/modules/login/bindings/login_binding.dart';
import 'package:digital_sampah/app/modules/login/views/login_view.dart';
import 'package:digital_sampah/app/modules/test/bindings/test_binding.dart';
import 'package:digital_sampah/app/modules/test/views/test_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.TEST,
      page: () => TestView(),
      binding: TestBinding(),
    ),
  ];
}

import 'package:get/get.dart';

import '../modules/gantipassword/bindings/gantipassword_binding.dart';
import '../modules/gantipassword/views/gantipassword_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home_page/bindings/home_page_binding.dart';
import '../modules/home_page/views/home_page_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/test/bindings/test_binding.dart';
import '../modules/test/views/test_view.dart';

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
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => HomePage(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: _Paths.GANTIPASSWORD,
      page: () => const GantipasswordView(),
      binding: GantipasswordBinding(),
    ),
  ];
}

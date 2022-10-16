import 'package:get/get.dart';
import 'package:digital_sampah/app/modules/paymentpage/bindings/paymentpage_binding.dart';
import 'package:digital_sampah/app/modules/paymentpage/views/paymentpage_view.dart';
import 'package:digital_sampah/app/modules/pemayaran/bindings/pemayaran_binding.dart';
import 'package:digital_sampah/app/modules/pemayaran/views/pemayaran_view.dart';
import '../modules/bantuan/bindings/bantuan_binding.dart';
import '../modules/bantuan/views/bantuan_view.dart';
import '../modules/hargaSampah/bindings/harga_sampah_binding.dart';
import '../modules/hargaSampah/views/harga_sampah_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home_page/bindings/home_page_binding.dart';
import '../modules/home_page/views/home_page_view.dart';
import '../modules/home_petugas/bindings/home_petugas_binding.dart';
import '../modules/home_petugas/views/home_petugas_view.dart';
import '../modules/jadwal/bindings/jadwal_binding.dart';
import '../modules/jadwal/views/jadwal_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/lupaPassword/bindings/lupa_password_binding.dart';
import '../modules/lupaPassword/views/lupa_password_view.dart';
import '../modules/pengambilan/bindings/pengambilan_binding.dart';
import '../modules/pengambilan/views/pengambilan_view.dart';
import '../modules/riwayat/bindings/riwayat_binding.dart';
import '../modules/riwayat/views/riwayat_view.dart';
import '../modules/statistikNasabah/bindings/statistiknasabah_binding.dart';
import '../modules/statistikNasabah/views/statistiknasabah_view.dart';
import '../modules/transaksi/bindings/transaksi_binding.dart';
import '../modules/transaksi/views/transaksi_view.dart';

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
      name: _Paths.HOME_PAGE,
      page: () => HomePage(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: _Paths.HOME_PETUGAS,
      page: () => const HomePetugasView(),
      binding: HomePetugasBinding(),
    ),
    GetPage(
      name: _Paths.LUPA_PASSWORD,
      page: () => const LupaPasswordView(),
      binding: LupaPasswordBinding(),
    ),
    GetPage(
      name: _Paths.HARGA_SAMPAH,
      page: () => HargaSampahView(),
      binding: HargaSampahBinding(),
    ),
    GetPage(
      name: _Paths.RIWAYAT,
      page: () => const RiwayatView(),
      binding: RiwayatBinding(),
    ),
    GetPage(
      name: _Paths.TRANSAKSI,
      page: () => const Transaksi(),
      binding: TransaksiBinding(),
    ),
    GetPage(
      name: _Paths.JADWAL,
      page: () => const JadwalView(),
      binding: JadwalBinding(),
    ),
    GetPage(
      name: _Paths.PENGAMBILAN,
      page: () => const PengambilanView(),
      binding: PengambilanBinding(),
    ),
    GetPage(
      name: _Paths.BANTUAN,
      page: () => const BantuanView(),
      binding: BantuanBinding(),
    ),
    GetPage(
      name: _Paths.STATISTIKNASABAH,
      page: () => const StatistiknasabahView(),
      binding: StatistiknasabahBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENTPAGE,
      page: () => PaymentpageView(),
      binding: PaymentpageBinding(),
    ),
    GetPage(
      name: _Paths.PEMAYARAN,
      page: () => const PemayaranView(),
      binding: PemayaranBinding(),
    )
  ];
}

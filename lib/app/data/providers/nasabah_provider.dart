import 'package:get/get.dart';

import '../models/nasabah_model.dart';

class NasabahProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Nasabah.fromJson(map);
      if (map is List)
        return map.map((item) => Nasabah.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Nasabah?> getNasabah(int id) async {
    final response = await get('nasabah/$id');
    return response.body;
  }

  Future<Response<Nasabah>> postNasabah(Nasabah nasabah) async =>
      await post('nasabah', nasabah);
  Future<Response> deleteNasabah(int id) async => await delete('nasabah/$id');
}

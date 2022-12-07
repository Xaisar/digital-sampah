import 'package:get/get.dart';

import '../models/petugas_model.dart';

class PetugasProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Petugas.fromJson(map);
      if (map is List)
        return map.map((item) => Petugas.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Petugas?> getPetugas(int id) async {
    final response = await get('petugas/$id');
    return response.body;
  }

  Future<Response<Petugas>> postPetugas(Petugas petugas) async =>
      await post('petugas', petugas);
  Future<Response> deletePetugas(int id) async => await delete('petugas/$id');
}

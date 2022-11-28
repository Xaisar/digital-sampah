import 'package:get/get.dart';

import '../models/sampah_model.dart';

class SampahProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Sampah.fromJson(map);
      if (map is List) return map.map((item) => Sampah.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Sampah?> getSampah(int id) async {
    final response = await get('sampah/$id');
    return response.body;
  }

  Future<Response<Sampah>> postSampah(Sampah sampah) async =>
      await post('sampah', sampah);
  Future<Response> deleteSampah(int id) async => await delete('sampah/$id');
}

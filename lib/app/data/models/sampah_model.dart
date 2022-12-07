class Sampah {
  String? id;
  String? nama;
  String? satuan;
  int? harga;

  Sampah({this.id, this.nama, this.satuan, this.harga});

  Sampah.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    satuan = json['satuan'];
    harga = json['harga'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['nama'] = nama;
    data['satuan'] = satuan;
    data['harga'] = harga;
    return data;
  }
}

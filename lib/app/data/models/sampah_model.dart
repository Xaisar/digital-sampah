class Sampah {
  String? id;
  String? name;
  String? satuan;
  int? harga;

  Sampah({this.id, this.name, this.satuan, this.harga});

  Sampah.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    satuan = json['satuan'];
    harga = json['harga'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['satuan'] = satuan;
    data['harga'] = harga;
    return data;
  }
}

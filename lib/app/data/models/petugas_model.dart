class Petugas {
  String? id;
  String? nama;
  String? tempatLahir;
  String? tanggalLahir;
  String? alamat;
  String? role;
  String? dawis;
  String? alamatDawis;

  Petugas(
      {this.id,
      this.nama,
      this.tempatLahir,
      this.tanggalLahir,
      this.alamat,
      this.role,
      this.dawis,
      this.alamatDawis});

  Petugas.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    tempatLahir = json['tempatLahir'];
    tanggalLahir = json['tanggalLahir'];
    alamat = json['alamat'];
    role = json['role'];
    dawis = json['dawis'];
    alamatDawis = json['alamatDawis'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['nama'] = nama;
    data['tempatLahir'] = tempatLahir;
    data['tanggalLahir'] = tanggalLahir;
    data['alamat'] = alamat;
    data['role'] = role;
    data['dawis'] = dawis;
    data['alamatDawis'] = alamatDawis;
    return data;
  }
}

class Nasabah {
  String? id;
  String? nama;
  String? tempatLahir;
  String? tanggalLahir;
  String? alamat;
  String? dawis;
  String? alamatDawis;
  String? tanggalMasuk;
  int? saldo;

  Nasabah(
      {this.id,
      this.nama,
      this.tempatLahir,
      this.tanggalLahir,
      this.alamat,
      this.dawis,
      this.alamatDawis,
      this.tanggalMasuk,
      this.saldo});

  Nasabah.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    tempatLahir = json['tempatLahir'];
    tanggalLahir = json['tanggalLahir'];
    alamat = json['alamat'];
    dawis = json['dawis'];
    alamatDawis = json['alamatDawis'];
    tanggalMasuk = json['tanggalMasuk'];
    saldo = json['saldo'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['nama'] = nama;
    data['tempatLahir'] = tempatLahir;
    data['tanggalLahir'] = tanggalLahir;
    data['alamat'] = alamat;
    data['dawis'] = dawis;
    data['alamatDawis'] = alamatDawis;
    data['tanggalMasuk'] = tanggalMasuk;
    data['saldo'] = saldo;
    return data;
  }
}

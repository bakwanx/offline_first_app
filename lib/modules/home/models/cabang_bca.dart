class CabangBca {
  CabangBca(this.namaCabang, this.kcu, this.kanwil, this.kota, this.kodeCabang,
      this.statusCabang, this.wilayahAsuransi);

  CabangBca.fromJson(Map<String, dynamic> json) {
    namaCabang = json['nama_cabang'];
    kcu = json['kcu'];
    kanwil = json['kanwil'];
    kota = json['kota'];
    kodeCabang = json['kode_cabang'];
    statusCabang = json['status_cabang'];
    wilayahAsuransi = json['wilayah_asuransi'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['nama_cabang'] = namaCabang;
    data['kcu'] = kcu;
    data['kanwil'] = kanwil;
    data['kota'] = kota;
    data['kode_cabang'] = kodeCabang;
    data['status_cabang'] = statusCabang;
    data['wilayah_asuransi'] = wilayahAsuransi;
    return data;
  }

  Map<String, dynamic> toMap() => {
    "nama_cabang": namaCabang,
    "kcu": kcu,
    "kanwil": kanwil,
    "kota": kota,
    "kode_cabang": kodeCabang,
    "status_cabang": statusCabang,
    "wilayah_asuransi": wilayahAsuransi
  };

  String? namaCabang;
  String? kcu;
  int? kanwil;
  String? kota;
  String? kodeCabang;
  String? statusCabang;
  int? wilayahAsuransi;
}
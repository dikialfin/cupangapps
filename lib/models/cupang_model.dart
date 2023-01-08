class CupangModel {
  final String namaIkan;
  final String urlPath;
  CupangModel({required this.namaIkan, required this.urlPath});

  factory CupangModel.fromJson(Map<String, dynamic> data) {
    return CupangModel(namaIkan: data["nama_ikan"], urlPath: data["url_path"]);
  }
}

import 'dart:convert';

MuslimPath muslimPathFromJson(String str) => MuslimPath.fromJson(json.decode(str));

String muslimPathToJson(MuslimPath data) => json.encode(data.toJson());

class MuslimPath {
    final String nama;
    final String bacaan;
    final String url;

    MuslimPath({
        required this.nama,
        required this.bacaan,
        required this.url,
    });

    factory MuslimPath.fromJson(Map<String, dynamic> json) => MuslimPath(
        nama: json["nama"],
        bacaan: json["bacaan"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "nama": nama,
        "bacaan": bacaan,
        "url": url,
    };
}

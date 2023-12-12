import 'dart:convert';

DoaHarian doaHarianFromJson(String str) => DoaHarian.fromJson(json.decode(str));

String doaHarianToJson(DoaHarian data) => json.encode(data.toJson());

class DoaHarian {
    String id;
    String doa;
    String ayat;
    String latin;
    String artinya;

    DoaHarian({
        required this.id,
        required this.doa,
        required this.ayat,
        required this.latin,
        required this.artinya,
    });

    factory DoaHarian.fromJson(Map<String, dynamic> json) => DoaHarian(
        id: json["id"],
        doa: json["doa"],
        ayat: json["ayat"],
        latin: json["latin"],
        artinya: json["artinya"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "doa": doa,
        "ayat": ayat,
        "latin": latin,
        "artinya": artinya,
    };
}

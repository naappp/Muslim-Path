import 'dart:convert';

Surat suratFromJson(String str) => Surat.fromJson(json.decode(str));

String suratToJson(Surat data) => json.encode(data.toJson());

class Surat {
    int number;
    String name;
    String englishName;
    String englishNameTranslation;
    int numberOfAyahs;
    String revelationType;

    Surat({
        required this.number,
        required this.name,
        required this.englishName,
        required this.englishNameTranslation,
        required this.numberOfAyahs,
        required this.revelationType,
    });

    factory Surat.fromJson(Map<String, dynamic> json) => Surat(
        number: json["number"],
        name: json["name"],
        englishName: json["englishName"],
        englishNameTranslation: json["englishNameTranslation"],
        numberOfAyahs: json["numberOfAyahs"],
        revelationType: json["revelationType"],
    );

    Map<String, dynamic> toJson() => {
        "number": number,
        "name": name,
        "englishName": englishName,
        "englishNameTranslation": englishNameTranslation,
        "numberOfAyahs": numberOfAyahs,
        "revelationType": revelationType,
    };
}

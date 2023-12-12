import 'dart:convert';
import 'package:coba/models/modelSurat.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class Repository {
  final String apiUrl = "https://api.alquran.cloud/v1/surah";

  Future<List<Surat>> fetchDataPlacessrt() async {
    Response response = await http.get(Uri.parse(apiUrl));
    List<Surat> dataSurat;
    if (response.statusCode == 200) {
      List<dynamic> listJson = json.decode(response.body)["data"];
      dataSurat = listJson.map((e) => Surat.fromJson(e)).toList();
      print(dataSurat);

      return dataSurat;
    } else {
      throw Exception('Failed to load data places');
    }
  }
}
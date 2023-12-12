import 'dart:convert';
import 'package:coba/models/modelDoa.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class Repository {
  final String apiUrl = "https://doa-doa-api-ahmadramadhan.fly.dev/api";

  Future<List<DoaHarian>> fetchDataDoa() async {
    Response response = await http.get(Uri.parse(apiUrl));
    List<DoaHarian> dataDoa;
    if (response.statusCode == 200) {
      List<dynamic> listJson = json.decode(response.body);
      dataDoa = listJson.map((e) => DoaHarian.fromJson(e)).toList();
      print(dataDoa);

      return dataDoa;
    } else {
      throw Exception('Failed to load data places');
    }
  }
}
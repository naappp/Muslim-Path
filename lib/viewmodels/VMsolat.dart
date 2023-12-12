
import 'dart:convert';
import 'package:coba/models/modelSolat.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class Repository {
  final String apiUrl = "https://muslimpathapi-default-rtdb.firebaseio.com/bacaansholat.json";

  Future<List<MuslimPath>> fetchDataSholat() async {
    Response response = await http.get(Uri.parse(apiUrl));

    List<MuslimPath> dataSholat;
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = json.decode(response.body);

      dataSholat = jsonData.values.map((value) {
        return MuslimPath.fromJson(value);
      }).toList();
    print(dataSholat);
      return dataSholat;
    } else {
      throw Exception('Failed to load data Sholat');
    }
  }
}
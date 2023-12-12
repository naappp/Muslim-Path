import 'package:coba/views/detailSurat.dart';
import 'package:coba/viewmodels/VMsurat.dart';
import 'package:flutter/material.dart';

class SuratPage extends StatefulWidget {
  const SuratPage({super.key});

  @override
  State<SuratPage> createState() => _SuratState();
}

class _SuratState extends State<SuratPage> {
  Repository repo = Repository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Surat-Surat Pendek'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              
            },
          ),
        ],
      ),
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: repo.fetchDataPlacessrt(),
          builder:
              (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                padding: EdgeInsets.all(10),
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailSurat(
                            number: snapshot.data?[index].number,
                            name: snapshot.data?[index].name,
                            englishName: snapshot.data?[index].englishName,
                            englishNameTranslation:
                                snapshot.data?[index].englishNameTranslation,
                            numberOfAyahs: snapshot.data?[index].numberOfAyahs,
                            revelationType:
                                snapshot.data?[index].revelationType,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 3,
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: ListTile(
                        title: Text(
                          snapshot.data![index].englishName,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}

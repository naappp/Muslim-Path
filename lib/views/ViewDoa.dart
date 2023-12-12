import 'package:coba/views/detailDoa.dart';
import 'package:coba/viewmodels/VMdoa.dart';
import 'package:flutter/material.dart';

class DoaPage extends StatefulWidget {
  const DoaPage({super.key});

  @override
  State<DoaPage> createState() => _DoaState();
}

class _DoaState extends State<DoaPage> {
  Repository repo = Repository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doa Sehari-hari'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: repo.fetchDataDoa(),
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
                          builder: (context) => DetailDoa(
                              id: snapshot.data![index].id,
                              doa: snapshot.data![index].doa,
                              ayat: snapshot.data![index].ayat,
                              latin: snapshot.data![index].latin,
                              artinya: snapshot.data![index].artinya),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 3,
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: ListTile(
                        title: Text(
                          snapshot.data![index].doa,
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

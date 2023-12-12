import 'package:coba/views/detailSolat.dart';
import 'package:coba/viewmodels/VMsolat.dart';
import 'package:flutter/material.dart';

class SholatPage extends StatefulWidget {
  const SholatPage({super.key});

  @override
  State<SholatPage> createState() => _MuslimState();
}

class _MuslimState extends State<SholatPage> {
  Repository repo = Repository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bacaan Sholat'),
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
    future: repo.fetchDataSholat(),
    builder: (BuildContext context, AsyncSnapshot snapshot) {
      if (snapshot.hasData) {
        return ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: snapshot.data.length,
          itemBuilder: (BuildContext context, int index) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailSolat(nama: snapshot.data[index].nama,bacaan: snapshot.data[index].bacaan, url: snapshot.data[index].url,),
        ),
      );
    },
    child: Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(
          snapshot.data[index].nama,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(snapshot.data[index].url),
            ),
          ),
        ),
      ),
    ),
  );
},

        );
      } else {
        return Center(child: CircularProgressIndicator());
      }
    },
  ),
),

    );
  }
}

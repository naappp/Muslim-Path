import 'package:coba/models/data_surat.dart';
import 'package:flutter/material.dart';

class DetailSuratPendekPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Surat-Surat Pendek'),
        backgroundColor: const Color.fromARGB(255, 53, 105, 148),
      ),
      body: ListView.builder(
        itemCount: suratPendekList.length,
        itemBuilder: (BuildContext context, int index) {
          final bacaan = suratPendekList[index];
          return Card(
            color: const Color.fromARGB(255, 187, 98, 128),
            elevation: 8, 
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            child: ListTile(
              title: Text(
                bacaan['name'],
                style: TextStyle(
                  color: Colors.white, 
                  fontWeight: FontWeight.bold, 
                ),
              ),
              leading: Icon(
                Icons.arrow_right_rounded, 
                color: Colors.black,
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text(bacaan['name']),
                    content: Text(bacaan['text']),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

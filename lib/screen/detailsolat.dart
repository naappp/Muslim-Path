import 'package:coba/models/data_solat.dart';
import 'package:flutter/material.dart';

class DetailSolatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Bacaan Solat'),
        backgroundColor: const Color.fromARGB(255, 53, 105, 148),
      ),
      body: ListView.builder(
        itemCount: bacaanSolatList.length,
        itemBuilder: (BuildContext context, int index) {
          final bacaan = bacaanSolatList[index];
          return Card(
            color: const Color.fromARGB(255, 187, 98, 128),
            elevation: 8, 
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15), 
            child: ListTile(
              title: Text(
                bacaan['title'],
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
                    title: Text(bacaan['title']),
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

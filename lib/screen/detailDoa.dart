import 'package:coba/models/data_doa.dart';
import 'package:flutter/material.dart';

class DetailDoaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Doa Sehari-hari'),
        backgroundColor: const Color.fromARGB(255, 53, 105, 148),
      ),
      body: ListView.builder(
        itemCount: doaHarianList.length,
        itemBuilder: (BuildContext context, int index) {
          final doa = doaHarianList[index];
          return Card(
            color: const Color.fromARGB(255, 187, 98, 128), 
            elevation: 3, 
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15), 
            child: ListTile(
              title: Text(
                doa['title'],
                style: TextStyle(
                  color: Colors.white, 
                  fontWeight: FontWeight.bold, 
                ),
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.white, 
                child: Image.asset(
                  doa['imageAsset'], 
                  width: 35, 
                  height: 35, 
                ),
              ),
              onTap: () {
                
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text(doa['title']),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Doa:'),
                        Text(doa['text']),
                        SizedBox(height: 16),
                        Text('Artinya:'),
                        Text(doa['artinya']),
                      ],
                    ),
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
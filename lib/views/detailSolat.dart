import 'package:flutter/material.dart';

class DetailSolat extends StatelessWidget {
  final String nama;
  final String bacaan;
  final String url;

  DetailSolat({required this.nama, required this.bacaan, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Solat'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              nama,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              bacaan,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  fit: BoxFit.cover, 
                  image: NetworkImage(url),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

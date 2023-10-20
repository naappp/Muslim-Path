import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 22),
            const SizedBox(height: 17),
            _greeting(),
            const SizedBox(height: 21),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1/1, // Ganti rasio menjadi 1:2
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  height: 10,
                  width: 12,
                  color: const Color.fromARGB(255, 224, 126, 159),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _greeting() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Muslim Path',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.mosque,
            color: Color.fromARGB(255, 27, 26, 26),
          ),
        ],
      ),
    );
  }
}

import 'package:coba/login.dart';
import 'package:coba/screen/kategori.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 53, 105, 148), 
        title: Row(
          children: [
            Icon(
              Icons.mosque, 
              color: Color.fromARGB(255, 27, 26, 26), 
            ),
            SizedBox(width: 8), 
            Text(
              'Muslim Path',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        
        fit: StackFit.expand, 
        children: <Widget>[
          
          Image.asset(
            'assets/images/background.jpg',
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                SizedBox(height: 30),
                Text(
                  'Welcome to',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 65, 61, 61),
                  ),
                ),
                 SizedBox(height: 20),
                Text(
                  ' Muslim Path',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 65, 61, 61),
                  ),
                ),         
                SizedBox(height: 60),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 16, 72, 117), 
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15), 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), 
                    ),
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

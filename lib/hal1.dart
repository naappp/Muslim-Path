import 'package:flutter/material.dart';

class hal1 extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<hal1> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    CategoryScreen('Doa Sehari-hari'),
    CategoryScreen('Surat-surat Pendek'),
    CategoryScreen('Bacaan Solat'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Muslim App'),
        backgroundColor: Colors.green,
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Doa Sehari-hari',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Surat-surat Pendek',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mosque),
            label: 'Bacaan Solat',
          ),
        ],
      ),
    );
  }
}

class CategoryScreen extends StatelessWidget {
  final String title;

  CategoryScreen(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(title),
      ),
    );
  }
}

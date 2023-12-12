import 'package:coba/screen/ProfilePage.dart';
import 'package:coba/screen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:coba/views/ViewDoa.dart';
import 'package:coba/views/ViewSolat.dart';
import 'package:coba/views/ViewSurat.dart';

class KategoriPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 206, 135, 194),
        title: Row(
          children: [
            SizedBox(width: 100),
            Text(
              'Muslim Path',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 8),
            Icon(
              Icons.mosque,
              color: Color.fromARGB(255, 27, 26, 26),
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  KategoriCard(
                    title: 'Bacaan Solat',
                    imageAsset: 'assets/images/solat.jpg',
                    description: 'Nabi Muhammad SAW bersabda: "Salat adalah tiang agama, barang siapa mendirikannya, maka sungguh ia telah menegakkan agama (Islam) itu dan barang siapa meninggalkannya maka sungguh ia telah merobohkan agama (Islam) itu"',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SholatPage()),
                      );
                    },
                  ),
                  KategoriCard(
                    title: 'Doa Sehari-hari',
                    imageAsset: 'assets/images/belajar.jpg',
                    description: 'Doa adalah unsur paling esensial dalam beribadah. Sebagaimana sabda Raulullah SAW,"Doa itu ibadah" dan "Tiada sesuatu yang paling mulia dalam pandangan Allah, selain berdoa kepada-Nya"',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DoaPage()),
                      );
                    },
                  ),
                ],
              ),
              KategoriCard(
                title: 'Surat-surat Pendek',
                imageAsset: 'assets/images/mengaji.jpg',
                description: 'Rasulullah SAW bersabda “Siapa saja membaca satu huruf dari Kitabullah (Al-Quran), maka dia akan mendapat satu kebaikan."',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SuratPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
//Mengatur navigasi antar halaman
   bottomNavigationBar: BottomNavigationBar(
  items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.category),
      label: 'Category',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ],
  onTap: (int index) {
   
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => KategoriPage()),
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfilePage()),
      );
    }
  },
),
    );
  }
}

class KategoriCard extends StatelessWidget {
  final String title;
  final String imageAsset;
  final String description;
  final VoidCallback onTap;

  KategoriCard({
    required this.title,
    required this.imageAsset,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.all(10),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: 3,
          child: Row(
            children: <Widget>[
              Container(
                width: 80,
                height: 150,
                child: Image.asset(
                  imageAsset,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:coba/login.dart';
import 'package:coba/services/firebase_auth-service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final FirebaseAuthService _authService = FirebaseAuthService();

  Future<void> _showLogoutConfirmationDialog(BuildContext context) async {
        return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout Confirmation'),
          content: Text('Are you sure you want to logout?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () async {
                await _authService.signOut();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text('Logout'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    User? currentUser = _authService.getCurrentUser();
    String? email = currentUser?.email;

    // Mengambil nama pengguna dari email (tanpa '@gmail.com')
    String username = email != null ? email.split('@').first : 'No user';

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Color.fromARGB(255, 206, 135, 194),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        children: [
          Card(
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ListTile(
              leading: Icon(Icons.account_circle, size: 60.0),
              title: Text(
                'Name',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                username,
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),
          Card(
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ListTile(
              leading: Icon(Icons.phone, size: 60.0),
              title: Text(
                'Phone Number',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '082143215286',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),
          Card(
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ListTile(
              leading: Icon(Icons.location_on, size: 60.0),
              title: Text(
                'Address',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Malang, Jawa Timur',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showLogoutConfirmationDialog(context),
        tooltip: 'Logout',
        child: Icon(Icons.logout),
        backgroundColor: Colors.blue,
      ),
    );
  }
}


import 'package:coba/login.dart';
import 'package:coba/register.dart';
import 'package:coba/screen/ProfilePage.dart';
import 'package:coba/screen/homepage.dart';
import 'package:coba/screen/kategori.dart';
import 'package:coba/views/ViewSolat.dart';


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

FirebaseApp? app;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  app = await Firebase.initializeApp(
    
    options: const FirebaseOptions(
      apiKey: "AIzaSyDvLwjuTiLAPAkAt5fBSfvZr98Jn_k6y4s",
      appId: "1:515284879500:android:d9a1e907c6807b6e5353a9",
      messagingSenderId: "Messaging sender id here",
      projectId: "muslimpathapi",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyA-B1ZHtqeAAAAAAAAAAAAAAAAAAAAAAA",
      appId: "1:1234567890:android:aaaaaaaaaaaaaaaaaaaaaa",
      messagingSenderId: "1234567890",
      projectId: "express-formiga-ad0cb",
    ),
  );
  runApp(const ExpressFormigaApp());
}

class ExpressFormigaApp extends StatelessWidget {
  const ExpressFormigaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Express Formiga',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Express Formiga"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          child: const Text("Novo Pedido"),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gymapp/admin/home.dart';
import 'package:gymapp/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      int isAdmin = 0;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gym App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: isAdmin == 1 ? const AdminHomePage() : const MyHomePage(),
    );
  }
}
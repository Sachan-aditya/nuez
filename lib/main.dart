import 'package:flutter/material.dart';
import 'package:news/home.dart';
import 'package:news/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showingSplash = true;
  // ignore: non_constant_identifier_names
  LoadHome() {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        showingSplash = false;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    LoadHome();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NEUUZ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: showingSplash ? const SplashScreen() : const HomeScreen(),
    );
  }
}

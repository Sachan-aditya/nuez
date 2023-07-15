import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 300,
          ),
          FadeInImage(
            placeholder: AssetImage("assets/images/aditya1.jpg"),
            image: AssetImage("assets/images/aditya1.jpg"),
            height: 230,
            width: 230,
          ),
          Spacer(),
          Text(
            "Developed By\nCODE With SACHAN ADITYA ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      )),
    );
  }
}

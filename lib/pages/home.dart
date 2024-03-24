import 'package:flutter/material.dart';
// import 'package:music/components/header.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F0F0F),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Text(
              "KI",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: Container(
        color: const Color(0xFF0F0F0F),
      ),
    );
  }
}

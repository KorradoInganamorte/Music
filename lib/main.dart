import 'package:flutter/material.dart';

import 'package:music/pages/about.dart';
// import 'package:music/pages/home.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF0F0F0F),
        fontFamily: "Roboto"),
      initialRoute: "/",
      routes: {
        "/": (context) => const About(),
        // "/about": (context) => const About()
      },
    );
  }
}

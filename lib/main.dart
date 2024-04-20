import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:music/pages/home.dart';

void main() {
  runApp(const Main());

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF0F0F0F),
        fontFamily: "Roboto",
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(),
      },
    );
  }
}

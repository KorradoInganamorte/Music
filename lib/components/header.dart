import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF0F0F0F),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: AppBar(
        title: const Text(
          "KI",
        style: TextStyle(fontSize: 28, color: Color(0xFFFFFFFF)),
        ),
      )
    );
  }
}
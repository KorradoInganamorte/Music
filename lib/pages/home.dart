import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:music/components/header.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F0F0F),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "KI",
                style: TextStyle(color: Colors.white, fontSize: 28.0),
              ),
              SizedBox(
                width: 268,
                height: 28,
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 18.0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Color(0xFF2B2B2B)),
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Color(0xFF4F4E4E)),
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    hintText: "Искать",
                    hintStyle: const TextStyle(color: Color(0xFF727272), fontSize: 14.0),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: const Color(0xFF0F0F0F),
      ),
    );
  }
}

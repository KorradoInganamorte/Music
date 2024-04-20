import 'package:flutter/material.dart';

import 'package:music/widgets/card_section/card_section.dart';
import 'package:music/widgets/footer.dart';
import 'package:music/widgets/header.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Header(),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: const CardSectionMusic()
      ),
      bottomNavigationBar: const Footer()
    );
  }
}

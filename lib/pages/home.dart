import 'package:flutter/material.dart';

import 'package:music/widgets/card/card.dart';
import 'package:music/widgets/header.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Header(),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: const CardMusic()
      ),
    );
  }
}

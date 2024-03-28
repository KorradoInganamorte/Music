import 'package:flutter/material.dart';

import 'package:music/widgets/header.dart';
import 'package:music/widgets/music/music.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Header(),
      ),
      body: Music(),
    );
  }
}
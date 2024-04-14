import 'package:flutter/material.dart';

import 'package:music/widgets/audioplayer/audioplayer.dart';
// import 'package:music/widgets/footer.dart';
import 'package:music/widgets/header.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Header(),
      ),
      body: MusicPlayer(),
      // bottomNavigationBar: Footer(),
    );
  }
}
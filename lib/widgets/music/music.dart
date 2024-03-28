import 'package:flutter/material.dart';

import 'package:music/widgets/music/components/main.dart';

class Music extends StatelessWidget {
  const Music({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        MainItemMusic()
      ],
    );
  }
}
import 'package:flutter/material.dart';

import 'package:music/widgets/audioplayer/audioplayer.dart';
import 'package:music/widgets/footer.dart';
import 'package:music/widgets/header.dart';

class About extends StatelessWidget {
  final String title;
  final String author;
  final String imageSrc;
  final String audioSrc;

  const About({super.key, required this.title, required this.author, required this.imageSrc, required this.audioSrc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Header(),
      ),
      body: MusicPlayer(title: title, author: author, imageSrc: imageSrc, audioSrc: audioSrc),
      bottomNavigationBar: const Footer(),
    );
  }
}
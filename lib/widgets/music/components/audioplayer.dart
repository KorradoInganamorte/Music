import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';
import 'package:music/assets_icon_icons.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();

    playAudio() async {
      await player.play(AssetSource('audio/Initial D - All Around.mp3'));
    }

    return IconButton(
      icon: const Icon(AssetsIcon.play),
      onPressed: () {
        playAudio();
      },
    );
  }
}
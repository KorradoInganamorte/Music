import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

import 'package:music/widgets/audioplayer/components/music_info.dart';
import 'package:music/widgets/audioplayer/components/music_controls.dart';

class MusicPlayer extends StatefulWidget {
  final String title;
  final String author;
  final String imageSrc;
  final String audioSrc;

  const MusicPlayer({super.key, required this.title, required this.author, required this.imageSrc, required this.audioSrc});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  late AudioPlayer player = AudioPlayer();

  @override
  void initState() {
    super.initState();

    // Create the audio player.
    player = AudioPlayer();

    // Set the release mode to keep the source after playback has completed.
    player.setReleaseMode(ReleaseMode.stop);

    // Start the player as soon as the app is displayed.
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await player.setSource(AssetSource('audio/${widget.audioSrc}'));
      await player.resume();
    });
  }

  @override
  void dispose() {
    // Release all sources and dispose the player.
    player.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF0F0F0F),
                  Color(0xFF000000),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image(
                  image: AssetImage("assets/images/${widget.imageSrc}"),
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill
                ),
              )
            )
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 12),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color(0xFF000000),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF000000),
                  Color(0xFF0F0F0F),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                MusicInfo(title: widget.title, author: widget.author),
                MusicControls(player: player),
              ],
            )
          ),
        ],
      ),
    );
  }
}

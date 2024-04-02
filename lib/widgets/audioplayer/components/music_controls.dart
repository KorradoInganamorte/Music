import 'dart:async';

import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';
import 'package:music/assets_icon_icons.dart';

class MusicControls extends StatefulWidget {
  final AudioPlayer player;

  const MusicControls({super.key, required this.player});

  @override
  State<MusicControls> createState() => _MusicControlsState();
}

class _MusicControlsState extends State<MusicControls> {
  PlayerState? playerState;

  Duration? duration;
  Duration? position;

  StreamSubscription? durationSubscription;
  StreamSubscription? positionSubscription;
  StreamSubscription? playerCompleteSubscription;
  StreamSubscription? playerStateChangeSubscription;

  bool get isPlaying => playerState == PlayerState.playing;
  bool get isPaused => playerState == PlayerState.paused;

  // String get durationText => "${(duration!.inSeconds ~/ 60)}:${duration!.inSeconds % 60}";
  // String get positionText => "${(position!.inSeconds ~/ 60) < 0 ? "0${(position!.inSeconds ~/ 60)}" : (position!.inSeconds ~/ 60)}:${position!.inSeconds % 60}";

  String get durationText => formatTime(duration);
  String get positionText => formatTime(position);

  AudioPlayer get player => widget.player;

  String formatTime(Duration? arg) {
    String minutes = arg?.inMinutes.toString() ?? "0";
    String seconds = arg?.toString().split(':')[2].substring(0, 2) ?? "00";

    return "$minutes:$seconds";
  }

  @override
  void initState() {
    super.initState();

    // Use initial values from player
    playerState = player.state;
    player.getDuration().then(
          (value) => setState(() {
            duration = value;
          }),
        );
    player.getCurrentPosition().then(
          (value) => setState(() {
            position = value;
          }),
        );
    initStreams();
  }

  @override
  void setState(VoidCallback fn) {
    // Subscriptions only can be closed asynchronously,
    // therefore events can occur after widget has been disposed.
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void dispose() {
    durationSubscription?.cancel();
    positionSubscription?.cancel();
    playerCompleteSubscription?.cancel();
    playerStateChangeSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 32),

        // timeLine
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: SliderTheme(
                    data: SliderThemeData(
                        trackHeight: 2,
                        trackShape: const RectangularSliderTrackShape(),
                        overlayShape: SliderComponentShape.noOverlay,
                        activeTrackColor: const Color(0xFFFFFFFF),
                        inactiveTrackColor: const Color(0xFF5F5F5F),
                        thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 7),
                        thumbColor: const Color(0xFF5F5F5F)),
                    child: Slider(
                        value: (position != null &&
                                duration != null &&
                                position!.inMilliseconds > 0 &&
                                position!.inMilliseconds <
                                    duration!.inMilliseconds)
                            ? position!.inMilliseconds /
                                duration!.inMilliseconds
                            : 0,
                        onChanged: (value) {
                          final newDuration = duration;
                          if (newDuration == null) {
                            return;
                          }
                          final position = value * newDuration.inMilliseconds;
                          player.seek(Duration(milliseconds: position.round()));
                        }))),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(positionText,
                      style: const TextStyle(
                          color: Color(0xFFFFFFFF), fontSize: 14)),
                  Text(durationText,
                      style: const TextStyle(
                          color: Color(0xFFFFFFFF), fontSize: 14))
                ],
              ),
            )
          ],
        ),
      ),

      // controls
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: const Icon(
              AssetsIcon.previous,
              size: 15,
            ),
            color: const Color(0xFFFFFFFF),
            onPressed: () {
              // playAudio();
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: IconButton(
              icon: Icon(
                isPlaying ? AssetsIcon.pause : AssetsIcon.play,
                size: 22,
              ),
              color: const Color(0xFFFFFFFF),
              onPressed: () {
                isPlaying ? pause() : play();
              },
            ),
          ),
          IconButton(
            icon: const Icon(AssetsIcon.next, size: 15),
            color: const Color(0xFFFFFFFF),
            onPressed: () {
              // playAudio();
            },
          ),
        ],
      )
    ]);
  }

  void initStreams() {
    durationSubscription = player.onDurationChanged.listen((newDuration) {
      setState(() => duration = newDuration);
    });

    positionSubscription = player.onPositionChanged.listen((newPosition) {
      setState(() => position = newPosition);
    });

    playerCompleteSubscription = player.onPlayerComplete.listen((event) {
      setState(() {
        playerState = PlayerState.stopped;
        position = Duration.zero;
      });
    });

    playerStateChangeSubscription = player.onPlayerStateChanged.listen((state) {
      setState(() {
        playerState = state;
      });
    });
  }

  Future<void> play() async {
    await player.resume();
    setState(() => playerState = PlayerState.playing);
  }

  Future<void> pause() async {
    await player.pause();
    setState(() => playerState = PlayerState.paused);
  }

  Future<void> stop() async {
    await player.stop();
    setState(() {
      playerState = PlayerState.stopped;
      position = Duration.zero;
    });
  }
}

// import 'package:flutter/material.dart';

// import 'package:music/assets_icon_icons.dart';

// import 'package:audioplayers/audioplayers.dart';

// class MusicControls extends StatefulWidget {
//   const MusicControls({super.key, required this.player});

//   final AudioPlayer player;

//   @override
//   State<MusicControls> createState() => _MusicControlsState();
// }

// class _MusicControlsState extends State<MusicControls> {
//   @override
//   Widget build(BuildContext context) {
//     bool isPlaying = false;

//     playAudio() async {
//       await widget.player.play(AssetSource('audio/Initial D - All Around.mp3'));
//     }

//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         IconButton(
//           icon: const Icon(
//             AssetsIcon.previous,
//             size: 15,
//           ),
//           color: const Color(0xFFFFFFFF),
//           onPressed: () {
//             // playAudio();
//           },
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 34),
//           child: IconButton(
//             icon: Icon(
//               isPlaying ? AssetsIcon.play : AssetsIcon.pause,
//               size: 22,
//             ),
//             color: const Color(0xFFFFFFFF),
//             onPressed: () {
//               isPlaying ? widget.player.stop() : playAudio();
//             },
//           ),
//         ),
//         IconButton(
//           icon: const Icon(AssetsIcon.next, size: 15),
//           color: const Color(0xFFFFFFFF),
//           onPressed: () {
//             // playAudio();
//           },
//         ),
//       ],
//     );
//   }
// }
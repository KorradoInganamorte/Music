import 'package:flutter/material.dart';

class MusicInfo extends StatefulWidget {
  final String title;
  final String author;

  const MusicInfo({super.key, required this.title, required this.author});

  @override
  State<MusicInfo> createState() => _MusicInfoState();
}

class _MusicInfoState extends State<MusicInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 0), 

            child: Text(
              widget.title,
              style: const TextStyle(color: Color(0xFFFFFFFF), fontSize: 20),
            )
          ),
          Text(
            widget.author,
            style: const TextStyle(color: Color(0xFF727272), fontSize: 14)
          )
        ],
      ),
    );
  }
}
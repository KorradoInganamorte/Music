import 'package:flutter/material.dart';

class MusicInfo extends StatelessWidget {
  const MusicInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 12),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 0), 

            child: Text(
              "Initial D - All around",
              style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 20),
            )
          ),
          Text(
            "Mood - Eurobeat",
            style: TextStyle(color: Color(0xFF727272), fontSize: 14)
          )
        ],
      ),
    );
  }
}
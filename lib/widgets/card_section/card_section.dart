import 'package:flutter/material.dart';
import 'package:music/pages/about.dart';

// import 'package:music/widgets/card/components/add_button.dart';
import 'package:music/widgets/card_section/components/card_item.dart';

class CardSectionMusic extends StatelessWidget {
  const CardSectionMusic({super.key});

  final String title = "Initial D - All around";
  final String author = "Lia";
  final String imageSrc = "2.0x/test-image.jpg";
  final String audioSrc = "Initial D - All Around.mp3";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 6, 0, 14),
          child: Text("Music (音楽)", style: TextStyle(color: Color(0xFFA5A5A5), fontSize: 20, height: 1.0))
        ),
        Material(
          color: Colors.transparent,

          child: InkWell(
            highlightColor: const Color(0xFF181818),
            hoverColor: const Color(0xFF181818),
            hoverDuration: Durations.medium1,

            borderRadius: BorderRadius.circular(5),

            child: Padding(
              padding: const EdgeInsets.fromLTRB(6, 4, 6, 10),
              child: CardItemMusic(title: title, author: author, imageSrc: imageSrc, audioSrc: audioSrc),
            ),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => About(title: title, author: author, imageSrc: imageSrc, audioSrc: audioSrc))),
          ),
        )
      ],
    );
  }
}
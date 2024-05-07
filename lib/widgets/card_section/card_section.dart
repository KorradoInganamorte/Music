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
    // List array = [
    //   {
    //     title: "Initial D - All around",
    //     author: "Lia",
    //     imageSrc: "2.0x/test-image.jpg",
    //     audioSrc: "Initial D - All Around.mp3"
    //   },
    //   {
    //     title: "Initial D - When the sun goes down",
    //     author: "Ken Blast",
    //     imageSrc: "2.0x/test-image.jpg",
    //     audioSrc: "Initial D - When The Sun Goes Down.mp3"
    //   }
    // ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 6, 0, 14),
          child: Text("Music", style: TextStyle(color: Color(0xFFA5A5A5), fontSize: 20, height: 1.0))
        ),
        Material(
          color: Colors.transparent,

          child: InkWell(
            highlightColor: const Color(0xFF181818),
            hoverColor: const Color(0xFF181818),
            hoverDuration: Durations.medium1,

            borderRadius: BorderRadius.circular(5),

            child: const Padding(
              padding: EdgeInsets.fromLTRB(6, 4, 6, 10),
              child: CardItemMusic(title: "Initial D - All around", author: "Lia", imageSrc: "2.0x/test-image.jpg", audioSrc: "Initial D - All Around.mp3"),
            ),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const About(title: "Initial D - All around", author: "Lia", imageSrc: "2.0x/test-image.jpg", audioSrc: "Initial D - All Around.mp3"))),
          ),
        )
      ],
    );
  }
}
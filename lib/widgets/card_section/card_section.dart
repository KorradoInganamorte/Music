import 'package:flutter/material.dart';

// import 'package:music/widgets/card/components/add_button.dart';
import 'package:music/widgets/card_section/components/card_item.dart';

class CardSectionMusic extends StatelessWidget {
  const CardSectionMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 6, 0, 14),
          child: Text("Music (音楽)", style: TextStyle(color: Color(0xFFA5A5A5), fontSize: 20, height: 1.0))
        ),
        CardItemMusic(),
      ],
    );
  }
}
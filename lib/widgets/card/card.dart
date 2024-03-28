import 'package:flutter/material.dart';

import 'package:music/widgets/card/components/add_button.dart';
import 'package:music/widgets/card/components/card_item.dart';

class CardMusic extends StatelessWidget {
  const CardMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 6), 
          child: Text("Настроение", style: TextStyle(fontSize: 20, color: Color(0xFF969696)))
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            CardItemMusic(),
            SizedBox(width: 16),
            AddButton()
          ],
        )
      ],
    );
  }
}
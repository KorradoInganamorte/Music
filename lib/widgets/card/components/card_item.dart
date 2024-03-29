import 'package:flutter/material.dart';

class CardItemMusic extends StatelessWidget {
  const CardItemMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [    
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: const Image(
            image: AssetImage("assets/images/2.0x/test_card-image.sy.jpg"),
            width: 140,
            height: 140,
          ),
        ),
        const SizedBox(height: 6),
        const Text("Eurobeat", style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16),)
      ]
    );
  }
}
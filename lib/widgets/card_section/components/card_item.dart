import 'package:flutter/material.dart';

class CardItemMusic extends StatelessWidget {
  const CardItemMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [    
        ClipRRect(
          borderRadius: BorderRadius.circular(5),

          child: const Image(
            image: AssetImage("assets/images/2.0x/test-image.jpg"),
            width: 180
          ),
        ),
        const SizedBox(height: 12),
        const Column(     
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text("Initial D - All around", style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 18, height: 1)),
            SizedBox(height: 6),
            Text("Lia", style: TextStyle(color: Color(0xFF626262), fontSize: 16, height: 1))
          ]
        )
      ]
    );
  }
}
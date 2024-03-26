import 'package:flutter/material.dart';

class CardMusic extends StatelessWidget {
  const CardMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
        child: const Image(
        image: AssetImage("assets/images/3.0x/test_card-image.sy.jpg"),
        width: 140,
        height: 140,
      ),
    );
  }
}
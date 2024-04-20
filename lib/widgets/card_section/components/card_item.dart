import 'package:flutter/material.dart';

class CardItemMusic extends StatefulWidget {
  final String title;
  final String author;
  final String imageSrc;
  final String audioSrc;

  const CardItemMusic({super.key, required this.title, required this.author, required this.imageSrc, required this.audioSrc});

  @override
  State<CardItemMusic> createState() => _CardItemMusicState();
}

class _CardItemMusicState extends State<CardItemMusic> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [    
        ClipRRect(
          borderRadius: BorderRadius.circular(5),

          child: Image(
            image: AssetImage("assets/images/${widget.imageSrc}"),
            width: 180
          ),
        ),
        const SizedBox(height: 12),
        Column(     
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(widget.title, style: const TextStyle(color: Color(0xFFFFFFFF), fontSize: 18, height: 1)),
            const SizedBox(height: 6),
            Text(widget.author, style: const TextStyle(color: Color(0xFF626262), fontSize: 16, height: 1))
          ]
        )
      ]
    );
  }
}
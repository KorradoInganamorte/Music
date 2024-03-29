import 'package:flutter/material.dart';
import 'package:music/assets_icon_icons.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return
        Container(
          width: 140,
          height: 140,

          decoration: BoxDecoration(
            color: const Color(0xFF242424),
            borderRadius: BorderRadius.circular(10)
          ),

          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(AssetsIcon.add, color: Colors.white, size: 40),
              Text("Добавить", style: TextStyle(color: Colors.white, fontSize: 14)),
            ],
          ),
        );
  }
}
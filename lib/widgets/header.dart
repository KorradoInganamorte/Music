import 'package:flutter/material.dart';

import 'package:music/assets_icon_icons.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF0F0F0F),

      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            const Padding(
              padding: EdgeInsets.only(right: 26),
              child: Text(
                "KI",
                style: TextStyle(color: Colors.white, fontSize: 28),
              )
            ),

            Expanded(
              child: SizedBox(
                height: 32,
                child: TextField(
                  cursorColor: Colors.white,
                  cursorHeight: 14,
                  cursorWidth: 1,

                  decoration: InputDecoration(
                    
                    alignLabelWithHint: true,

                    fillColor: const Color(0xFF434343),
                    filled: true,

                    contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),

                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),

                    hintText: "Искать",
                    hintStyle: const TextStyle(color: Color(0xFFFFFFFF), fontSize: 14),
                    suffixIcon: const Icon(AssetsIcon.search, size: 16,color: Colors.white),
                  ),
                  
                  style: const TextStyle(color: Colors.white, height: 1, fontSize: 14),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
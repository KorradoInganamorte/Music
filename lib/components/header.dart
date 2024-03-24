import 'package:flutter/material.dart';

import 'package:music/assets_icon_icons.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF0F0F0F),

      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            const Padding(
              padding: EdgeInsets.only(right: 26.0),
              child: Text(
                "KI",
                style: TextStyle(color: Colors.white, fontSize: 28.0),
              )
            ),

            Expanded(
              child: SizedBox(
                height: 32,
                child: TextField(
                  cursorColor: Colors.white,
                  cursorHeight: 21.0,
                  cursorWidth: 1.0,

                  decoration: InputDecoration(
                    alignLabelWithHint: true,

                    fillColor: const Color(0xFF2B2B2B),
                    filled: true,

                    contentPadding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 9.0),

                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),

                    hintText: "Искать",
                    hintStyle: const TextStyle(color: Color(0xFFFFFFFF), fontSize: 14.0),
                    suffixIcon: const Icon(AssetsIcon.search, size: 16,color: Colors.white,),
                  ),
                  
                  style: const TextStyle(color: Colors.white, height: 1.5, fontSize: 14.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
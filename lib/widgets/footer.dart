import 'package:flutter/material.dart';
import 'package:music/assets_icon_icons.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      height: 48,
      backgroundColor: const Color(0xFF0F0F0F),
      surfaceTintColor: const Color(0xFF0F0F0F),

      destinations: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                alignment: Alignment.bottomCenter
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    AssetsIcon.add,
                    size: 18,
                    color: Color(0xFFFFFFFF),
                  ),
                  Text("Главная", style: TextStyle(fontSize: 12, color: Color(0xFFFFFFFF))),
                ],
              ),
            )
          ],
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                alignment: Alignment.bottomCenter
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    AssetsIcon.add,
                    size: 18,
                    color: Color(0xFFFFFFFF),
                  ),
                  Text("Главная", style: TextStyle(fontSize: 12, color: Color(0xFFFFFFFF))),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
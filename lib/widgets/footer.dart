import 'package:flutter/material.dart';
import 'package:music/assets_icon_icons.dart';
// import 'package:music/pages/home.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 68,
        color: const Color(0xFF0F0F0F),
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  // MaterialPageRoute(builder: (context) => const Home()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0F0F0F),
                foregroundColor: const Color(0xFF757575),
                surfaceTintColor: const Color(0xFF121212),
                animationDuration: Durations.medium1,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Icon(
                    AssetsIcon.home,
                    size: 20,
                    color: Color(0xFFFFFFFF),
                  ),
                  SizedBox(height: 8),
                  Text("Home", style: TextStyle(fontSize: 12, color: Color(0xFFFFFFFF), height: 1)),
                ],
              )
            ),
          ],
        )
    );
  }
}

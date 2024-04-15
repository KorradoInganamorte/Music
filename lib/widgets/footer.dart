import 'package:flutter/material.dart';
import 'package:music/assets_icon_icons.dart';

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
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0F0F0F),
                  foregroundColor: const Color(0xFF757575),
                  surfaceTintColor: const Color(0xFF121212),

                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
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
                    SizedBox(height: 6),
                    Text("Главная",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFFFFFFFF))),
                  ],
                )),
          ],
        )
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     ElevatedButton(
        //       onPressed: () {},
        //       style: ElevatedButton.styleFrom(
        //         backgroundColor: Colors.transparent,

        //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        //         // alignment: Alignment.bottomCenter
        //       ),
        //       child: const Column(
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Icon(
        //             AssetsIcon.add,
        //             size: 18,
        //             color: Color(0xFFFFFFFF),
        //           ),
        //           Text("Главная", style: TextStyle(fontSize: 12, color: Color(0xFFFFFFFF))),
        //         ],
        //       ),
        //     )
        //   ],
        // ),
        // Row(
        //   children: [
        //     ElevatedButton(
        //       onPressed: () {},
        //       style: ElevatedButton.styleFrom(
        //         backgroundColor: Colors.transparent,

        //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        //         // alignment: Alignment.bottomCenter
        //       ),
        //       child: const Column(
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Icon(
        //             AssetsIcon.add,
        //             size: 18,
        //             color: Color(0xFFFFFFFF),
        //           ),
        //           Text("Музыка", style: TextStyle(fontSize: 12, color: Color(0xFFFFFFFF))),
        //         ],
        //       ),
        //     )
        //   ],
        // ),
        );
  }
}

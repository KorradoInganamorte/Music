import 'package:flutter/material.dart';

class OtherMusicItem extends StatelessWidget {
  const OtherMusicItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Padding(
            padding: const EdgeInsets.only(right: 12),

            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const Image(
                width: 98,
                height: 98,
                image: AssetImage("assets/images/2.0x/test_card-image.sy.jpg"),
              ),
            ),
          ),
          Container(
            height: 98,
            padding: const EdgeInsets.symmetric(vertical: 6),

            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Padding(padding: EdgeInsets.only(bottom: 2), child: Text("Initial D - Rage Your Dream", style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 14))),
                    Text("Pretty Ok", style: TextStyle(color: Color(0xFF969696), fontSize: 12))
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text("5,2 млн прослушиваний", style: TextStyle(color: Color(0xFF969696), fontSize: 10)),
                    Text("9 лет назад", style: TextStyle(color: Color(0xFF969696), fontSize: 10)),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class MainItemMusic extends StatelessWidget {
  const MainItemMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Image(
          image: const AssetImage("assets/images/2.0x/test_card-image.jpg"),
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14),

          child: const Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 12), 

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 4), 

                  child: Text(
                    "Initial D - All around",
                    style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 18),
                  )
                ),
                Text(
                  "Настроение - Eurobeat",
                  style: TextStyle(color: Color(0xFF727272), fontSize: 14)
                )
              ],
            ),
          )
        ),
      ],
    );
  }
}
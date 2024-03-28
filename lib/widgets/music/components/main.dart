import 'package:flutter/material.dart';

class MainItemMusic extends StatelessWidget {
  const MainItemMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Container(
        width: MediaQuery.of(context).size.width,
        height: 32,
        decoration: const BoxDecoration(
          color: Color(0xFF000000),
          gradient: LinearGradient( 
            begin: Alignment.topCenter, 
            end: Alignment.bottomCenter, 
            colors: [ 
              Color(0xFF0F0F0F), 
              Color(0xFF000000), 
            ], 
          ), 
        ),
      ),
        Image(
          image: const AssetImage("assets/images/2.0x/test_card-image.jpg"),
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(14, 16, 14, 12),

          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color(0xFF000000),
            gradient: LinearGradient( 
              begin: Alignment.topCenter, 
              end: Alignment.bottomCenter, 
              colors: [  
                Color(0xFF000000),
                Color(0xFF0F0F0F),
              ], 
            ), 
          ),

          child: const Column(
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
        ),
      ],
    );
  }
}
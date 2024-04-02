import 'package:flutter/material.dart';

class GradientTop extends StatelessWidget {
  const GradientTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
import 'package:flutter/material.dart';
import 'package:music/pages/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 38),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20), 
                  child: Text("KI", style: TextStyle(color: Colors.white, fontSize: 48))
                )
              ),
            ),

            const Text("I wanna rage in my dream", style: TextStyle(color: Colors.white, fontSize: 20)),

            // Spacer(),

            // const Text("by Korrado Inganamorte", style: TextStyle(color: Color(0xFF3A3A3A), fontSize: 20)),

            // SizedBox(height: 44)
          ],
        ),
      )
    );
  }
}
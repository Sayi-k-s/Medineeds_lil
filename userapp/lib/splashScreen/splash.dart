import 'dart:ui';

import 'package:flutter/material.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 30,sigmaY: 30,),
            child: Transform.translate(
              offset: Offset(0, 0),
              child: Container(
                color: Color.fromARGB(255, 200, 231, 241),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

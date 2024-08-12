import 'package:flutter/material.dart';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(splash());
}

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Stack(
      children: [
        FadeInUp(
            delay: Duration(milliseconds: 1000),
            child: Container(
              decoration: BoxDecoration(),
            )),
        Positioned(
            top: 650,
            left: 160,
            child: FadeInUp(
              delay: Duration(milliseconds: 1000),
              child: Center(
                child: Text("Takumara hard work",
                    style: GoogleFonts.bebasNeue(
                        color: Colors.purple,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
            )),
        Positioned(
            top: 600,
            left: 100,
            child: FadeInUp(
              delay: Duration(milliseconds: 1000),
              child: Text(
                "volg  willpower",
                style: GoogleFonts.bebasNeue(
                  color: Colors.purple,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
        Positioned(
            child: FadeInUp(
                delay: Duration(milliseconds: 1000),
                child: Spin(
                    delay: Duration(milliseconds: 1000),
                    child: Image.asset("images/2.jpg"))))
      ],
    )));
  }
}

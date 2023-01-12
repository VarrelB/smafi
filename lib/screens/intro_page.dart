import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: 100.0, right: 100.0, bottom: 20.0, top: 20.0),
          child: Image.asset('lib/assets/intro.png'),
        ),
        const Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text(
            "Investasi Perikanan",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue,
            ),
          ),
        ),
        Text(
          "for the bright future",
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 25, color: Colors.lightBlue),
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(25),
          ),
          padding: EdgeInsets.only(
              left: 100.0, right: 100.0, bottom: 20.0, top: 20.0),
          child: Text(
            "Investasi Sekarang",
            style: TextStyle(color: Colors.white),
          ),
        ),
        const Spacer(),
      ],
    ));
  }
}

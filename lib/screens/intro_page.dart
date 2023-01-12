import 'package:flutter/material.dart';

import 'login_page.dart';

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
              color: Color.fromARGB(255, 12, 100, 250),
            ),
          ),
        ),
        Text(
          "for the bright future",
          style:
              TextStyle(fontSize: 25, color: Color.fromARGB(255, 12, 100, 250)),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const LoginPage();
              },
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 12, 100, 250),
              borderRadius: BorderRadius.circular(25),
            ),
            padding: const EdgeInsets.only(
                left: 100.0, right: 100.0, bottom: 20.0, top: 20.0),
            child: const Text(
              "Investasi Sekarang",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
        const Spacer(),
      ],
    ));
  }
}

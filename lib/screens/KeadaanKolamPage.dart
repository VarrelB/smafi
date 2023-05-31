import 'package:flutter/material.dart';
import 'package:test2/screens/TransaksiPage.dart';

import 'DashboardPage.dart';
import 'ProfilePage.dart';

class KeadaanKolamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/keadaankolampage.png"),
              fit: BoxFit.contain)),
      child: Column(children: <Widget>[
        const Spacer(),
        SizedBox(
          height: 240,
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Dashboard();
                  },
                ),
              ),
              child: Image(
                image: AssetImage("lib/assets/homeidle.png"),
                height: 45,
                width: 45,
              ),
            ),
            SizedBox(
              width: 35,
            ),
            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return TransaksiPage();
                  },
                ),
              ),
              child: Image(
                image: AssetImage("lib/assets/transaksiidle.png"),
                height: 45,
                width: 45,
              ),
            ),
            SizedBox(
              width: 35,
            ),
            Image(
              image: AssetImage("lib/assets/kolamhold.png"),
              height: 45,
              width: 45,
            ),
            SizedBox(
              width: 35,
            ),
            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ProfilePage();
                  },
                ),
              ),
              child: Image(
                image: AssetImage("lib/assets/profileidle.png"),
                height: 45,
                width: 45,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
      ]),
    ));
  }
}

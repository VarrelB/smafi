import 'package:flutter/material.dart';
import 'package:test2/screens/ProfilePage.dart';

import 'DashboardPage.dart';
import 'KeadaanKolamPage.dart';
import 'TransaksiPage.dart';

class PembelajaranPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/pembelajaranpage.png"),
              fit: BoxFit.contain)),
      child: Column(children: <Widget>[
        SizedBox(
          height: 120,
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 100.0, right: 100.0, bottom: 20.0, top: 3.0),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none, hintText: 'Cari Pembelajaran'),
          ),
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
                image: AssetImage("lib/assets/transaksihold.png"),
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
                    return KeadaanKolamPage();
                  },
                ),
              ),
              child: Image(
                image: AssetImage("lib/assets/kolamidle.png"),
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

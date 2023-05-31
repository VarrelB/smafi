import 'package:flutter/material.dart';
import 'package:test2/screens/PembelianPage.dart';
import 'package:test2/screens/ProfilePage.dart';

import 'DashboardPage.dart';
import 'KeadaanKolamPage.dart';
import 'PembelajaranPage.dart';

class TransaksiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/transaksipage.png"),
              fit: BoxFit.contain)),
      child: Column(children: <Widget>[
        SizedBox(
          height: 120,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PembelianPage();
                  },
                ),
              ),
              child: Image(
                image: AssetImage("lib/assets/pembelianbtn.png"),
                height: 60,
                width: 60,
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
                    return Dashboard();
                  },
                ),
              ),
              child: Image(
                image: AssetImage("lib/assets/transferbtn.png"),
                height: 60,
                width: 60,
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
                    return PembelajaranPage();
                  },
                ),
              ),
              child: Image(
                image: AssetImage("lib/assets/belajarbtn.png"),
                height: 60,
                width: 60,
              ),
            ),
          ],
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
            Image(
              image: AssetImage("lib/assets/transaksihold.png"),
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

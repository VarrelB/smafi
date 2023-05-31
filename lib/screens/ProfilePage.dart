import 'package:flutter/material.dart';
import 'package:test2/screens/RiwayatTransaksi_page.dart';
import 'package:test2/screens/TransaksiPage.dart';
import 'package:test2/screens/login_page.dart';

import 'DashboardPage.dart';
import 'KeadaanKolamPage.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/profilpage.png"),
              fit: BoxFit.contain)),
      child: Column(children: <Widget>[
        SizedBox(
          height: 210,
        ),
        Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Text(
              "Setting",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return TransaksiTerkiniPage();
                  },
                ),
              ),
              child: Text(
                "Pembayaran",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Bantuan",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                  },
                ),
              ),
              child: Text(
                "Keluar",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 240,
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
            Image(
              image: AssetImage("lib/assets/profilehold.png"),
              height: 45,
              width: 45,
            ),
          ],
        ),
        SizedBox(height: 10),
      ]),
    ));
  }
}

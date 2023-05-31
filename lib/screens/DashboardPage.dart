import 'package:flutter/material.dart';
import 'package:test2/screens/ProfilePage.dart';
import 'package:test2/screens/RiwayatTransaksi_page.dart';
import 'package:test2/screens/TransaksiPage.dart';

import 'KeadaanKolamPage.dart';
import 'PembelianPage.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/homepagebg.png"),
              fit: BoxFit.contain)),
      child: Column(children: <Widget>[
        const Spacer(),
        SizedBox(
          height: 350,
        ),
        GestureDetector(
          onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return PembelianPage();
              },
            ),
          ),
          child: Text(
            "Investasi Sekarang",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        SizedBox(
          height: 80,
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
            "Transaksi Terkini",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 12, 100, 250)),
          ),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("lib/assets/homehold.png"),
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
        /*Row(
          children: const <Widget>[
            Expanded(
              child:
                  Text('Deliver features faster', textAlign: TextAlign.center),
            ),
            Expanded(
              child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
            ),
            Expanded(
              child: FittedBox(
                child: FlutterLogo(),
              ),
            ),
          ],
        )*/
      ]),
    ));
  }
}

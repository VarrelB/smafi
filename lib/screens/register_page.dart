import 'package:flutter/material.dart';

import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 100.0, right: 100.0, bottom: 20.0, top: 20.0),
            child: Image.asset('lib/assets/daftar.png'),
          ),
          //sup
          Text(
            "Sign up",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Color.fromARGB(255, 12, 100, 250),
            ),
          ),
          SizedBox(height: 10),
          //email
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Email ID'),
              ),
            ),
          ),
          //nama lengkap
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Nama Lengkap'),
              ),
            ),
          ),
          //nomor telpon
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Nomor Telpon'),
              ),
            ),
          ),
          //pw
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dengan mendaftar, saya setuju dengan ',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                'kebijakan',
                style: TextStyle(color: Color.fromARGB(255, 12, 100, 250)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'privasi ',
                style: TextStyle(color: Color.fromARGB(255, 12, 100, 250)),
              ),
              Text(
                'dan ',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                'persyaratan layanan ',
                style: TextStyle(color: Color.fromARGB(255, 12, 100, 250)),
              ),
            ],
          ),
          SizedBox(height: 15),
          //btn
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 12, 100, 250),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Text(
                  'Lanjutkan',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          //register
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sudah Pernah Mendaftar?',
                style: TextStyle(color: Color.fromARGB(255, 128, 128, 128)),
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ))
                },
                child: Text(
                  ' Login',
                  style: TextStyle(
                    color: Color.fromARGB(255, 12, 100, 250),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}

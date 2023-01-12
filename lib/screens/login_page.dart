import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 100.0, right: 100.0, bottom: 20.0, top: 20.0),
            child: Image.asset('lib/assets/login.png'),
          ),
          //sup
          Text(
            "Login",
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
          SizedBox(height: 20),
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
          Text(
            'Lupa Password?',
            style: TextStyle(color: Color.fromARGB(255, 12, 100, 250)),
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
                  'Login',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            '------------------------OR------------------------',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 238, 238, 238),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Text(
                  'Login Dengan Google',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 128, 128, 128)),
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
                'Belum Pernah Masuk?',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 128, 128, 128)),
              ),
              Text(
                ' Daftar',
                style: TextStyle(
                  color: Color.fromARGB(255, 12, 100, 250),
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}

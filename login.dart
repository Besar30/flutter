import 'package:flutter/material.dart';
import 'package:login/widgets/botton.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 20),
                Image.asset('asset/images/OIP.jpeg', height: 150),
                SizedBox(height: 20),
                const Text(
                  "Welcome To Flutter",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(height: 30),
                botton(
                  onpressed: () => Navigator.of(context).pushNamed('login2'),
                  text: 'Get Started',
                  pgcolor: Colors.white,
                  textcolor: Colors.lightBlue,
                ),
              ]),
        ),
      ),
    );
  }
}

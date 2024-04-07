import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/login.dart';
import 'package:login/screens/login2.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //لكل الtextformfield
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Color(0xfff2f9fe),
          //بشكل عام
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black54),
              borderRadius: BorderRadius.circular(25)),
          //التانى
          disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black54),
              borderRadius: BorderRadius.circular(25)),
          //اللى بشاور عليه
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black54),
              borderRadius: BorderRadius.circular(25)),
        ),
      ),
      home: login(),
      routes: {
        'login2': (context) => login2(authType: AuthType.login2),
        'register':(context) => login2(authType: AuthType.register)
      },
    );
  }
}

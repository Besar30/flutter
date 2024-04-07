import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login/widgets/botton.dart';
import 'package:login/widgets/formfield.dart';

enum AuthType { login2, register }

class login2 extends StatelessWidget {
  const login2({super.key, required this.authType});
  final AuthType authType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .5,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  color: Colors.lightBlue,
                ),
              ),
              Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Hello!',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Image.asset('asset/images/OIP.jpeg', height: 130),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          formfield(authType: authType),
        ],
      ),
    ));
  }
}

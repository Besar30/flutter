import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login/screens/login2.dart';
import 'package:login/widgets/botton.dart';

class formfield extends StatefulWidget {
  const formfield({super.key, required this.authType});
  final AuthType authType;
  @override
  State<formfield> createState() => _formfieldState();
}

class _formfieldState extends State<formfield> {
  final _formkey = GlobalKey<FormState>();
  String _email = '', _password = '';
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) => _email = value,
                validator: (value) =>
                    value!.isEmpty ? 'enter a valid email' : null,
                decoration: const InputDecoration(
                    labelText: 'Enter Your Email',
                    prefixIcon: Icon(Icons.email)),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                onChanged: (value) => _password = value,
                validator: (value) =>
                    value!.length < 6 ? 'enter the  wright password' : null,
                decoration: const InputDecoration(
                    labelText: 'Enter Your Password',
                    prefixIcon: Icon(Icons.password)),
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              botton(
                  text:
                      widget.authType == AuthType.login2 ? 'Login' : 'register',
                  onpressed: () {
                    if (_formkey.currentState!.validate()) {
                      print(_email);
                      print(_password);
                    }
                  },
                  textcolor: Colors.white,
                  pgcolor: Colors.lightBlue),
              SizedBox(
                height: 10,
              ),
              TextButton(
                child: Text(widget.authType == AuthType.login2
                    ? 'Don\'t Have Account ?'
                    : 'You Have an Account'),
                onPressed: () {
                  if (widget.authType == AuthType.login2) {
                    Navigator.of(context).pushReplacementNamed('register');
                  } else {
                    Navigator.of(context).pushReplacementNamed('login2');
                  }
                },
              ),
            ],
          ),
        ));
  }
}

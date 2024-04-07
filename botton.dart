import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class botton extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;
  final Color textcolor;
  final Color pgcolor;

  const botton({super.key, required this.text, required this.onpressed, required this.textcolor, required this.pgcolor});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          color: pgcolor,
          onPressed: onpressed,
          child: Text(
            text,
            style: TextStyle(
              color: textcolor,
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),
          )),
    );
  }
}

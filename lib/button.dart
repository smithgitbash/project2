import 'package:flutter/material.dart';

class Button extends StatelessWidget {
const Button({required this.onTap,required this.text,super.key});


final String text;
 final void Function() onTap;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onTap, child: Text(text),
    style: ElevatedButton.styleFrom(),);
  }
}
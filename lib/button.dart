import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({required this.answer,required this.clicked, super.key});

  String answer;
  void Function() clicked;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 225, 204, 130),
        foregroundColor: Colors.white,
        elevation: 20,
        
        ),
        onPressed: () {},
        child: Text(answer, style: TextStyle(fontWeight: FontWeight.bold),));
  }
}

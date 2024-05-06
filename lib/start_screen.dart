import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
   StartScreen(this.changeScreen,{super.key});

  void Function() changeScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Image.asset('assets/quiz-logo.png',width: 400,),
          const SizedBox(
            height: 20,
          ),
          const Text('Lets Start The Quiz'),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
              onPressed: changeScreen,
              icon: const Icon(Icons.arrow_forward_outlined),
              label: const Text('START'))
        ],
      ),
    );
  }
}

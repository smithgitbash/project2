import 'package:flutter/material.dart';
import 'package:project2/data/dataQusetions.dart';
import 'package:project2/question_screen.dart';
import 'package:project2/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

final List<String> selectedAnswers =[];

var activeScreen = 'start-screen';

chosenAnswer(answer){
  selectedAnswers.add(answer);
}

 switchScreen(){
  setState(() {
    activeScreen= 'question_screen';
  });

if (questions.length==selectedAnswers.length){

setState(() {
  activeScreen = 'start-screen';
});

}

}


  @override
  Widget build(BuildContext context) {

    
    return MaterialApp(
      home: Scaffold(
        body: activeScreen == 'start-screen' ? StartScreen(switchScreen):QuestionScreen(onSelectedAnswer:chosenAnswer),
      backgroundColor: Colors.amber,),
    );
  }
}

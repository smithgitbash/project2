import 'package:flutter/material.dart';
import 'package:project2/button.dart';
import 'package:project2/data/dataQusetions.dart';
import 'package:project2/models/qusetionclass.dart';

class QuestionScreen extends StatefulWidget {
   QuestionScreen({required this.onSelectedAnswer,super.key});

void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
 

var currentQuestion = questions[0];
  var currentQuestionIndex = 0;

void changeQuestion(String SelectedAnswer){
widget.onSelectedAnswer(SelectedAnswer);

  setState(() {
    currentQuestionIndex++;
    currentQuestion = questions[currentQuestionIndex];
  });
}
 @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.text),
            const SizedBox(
              height: 20,
            ),
             ...currentQuestion.getShuffledAnswer().map((answer){
              return Button(clicked: (){
                return changeQuestion(answer);
              }, answer: answer);
             })
            ,
           
          ],
        ),
      ),
    );
  }
}

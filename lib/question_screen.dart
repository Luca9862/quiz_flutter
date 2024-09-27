import 'package:flutter/material.dart';
import 'answer_button.dart';
import 'data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});
  final void Function(String) onSelectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen>{
  var currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    widget.onSelectAnswer(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentQuestionIndex];
    return Container(
      margin: const EdgeInsets.all(40),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.text,
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 201, 153, 251),
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30, width: double.infinity),
          ...currentQuestion.getShuffledAnwers().map((answer) {
            return AnswerButton(() => answerQuestion(answer), answer);
          }),
        ],
      )
    );
  }
}
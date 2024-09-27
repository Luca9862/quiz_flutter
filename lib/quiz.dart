import 'package:flutter/cupertino.dart';
import 'start_screen.dart';
import 'question_screen.dart';
import 'data/questions.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  Widget? activeScreen;
  List<String> selectedAnswers = [];

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = StartScreen(switchScreen);
        selectedAnswers = [];
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionScreen(onSelectAnswer: chooseAnswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
        ),
      ),
      child: activeScreen,
    );
  }
}
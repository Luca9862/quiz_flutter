import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  void onPressed(){

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
          children: [
          Image.asset('assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(100, 255, 255, 255),
          ),
            const SizedBox(height: 50,),
            const Text('Quiz',
              style: TextStyle(
                color: Color.fromARGB(255, 237, 223, 252),
                fontSize: 24
              ),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: onPressed, child: const Text('Start quiz'))
        ],
      ),
    );
  }
}

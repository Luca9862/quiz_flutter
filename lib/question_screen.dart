import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget{
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen>{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('The question...',
          style: TextStyle(
              color: Colors.white
          ),
        ),
        const SizedBox(height: 30, width: double.infinity),
        ElevatedButton(
            onPressed: (){},
            child: const Text('Answer 1')
        ),
        ElevatedButton(
            onPressed: (){},
            child: const Text('Answer 2')
        ),
        ElevatedButton(
            onPressed: (){},
            child: const Text('Answer 3')
        ),
        ElevatedButton(
            onPressed: (){},
            child: const Text('Answer 4')
        )
      ],
    );
  }

}
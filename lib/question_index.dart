import 'package:flutter/material.dart';

class QuestionIndex extends StatelessWidget {
  const QuestionIndex(
      {super.key, required this.isCorrectAnswer, required this.questionIndex});
  final bool isCorrectAnswer;
  final int questionIndex;

  @override
  Widget build(context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(223, 159, 219, 234)
            : const Color.fromARGB(223, 224, 159, 234),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(questionNumber.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 31, 3, 80),
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/question_index.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QuestionIndex(
                    isCorrectAnswer:
                        data['user_answer'] == data['correct_answer'],
                    questionIndex: data['question_index'] as int),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          (data['question']) as String,
                          style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          (data['user_answer']) as String,
                          style: GoogleFonts.lato(
                            color: const Color.fromARGB(202, 220, 197, 238),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          (data['correct_answer']) as String,
                          style: GoogleFonts.lato(
                            color: const Color.fromARGB(201, 134, 233, 238),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

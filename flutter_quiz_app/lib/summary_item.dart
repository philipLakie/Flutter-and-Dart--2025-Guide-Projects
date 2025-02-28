// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/questions_identifier.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.summaryData, {super.key});
  final Map<String, Object> summaryData;
  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        summaryData['correct_answer'] == summaryData['user_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionsIdentifier(
          questionIndex: summaryData['question_index'] as int,
          isCorrectAnswer: isCorrectAnswer,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                summaryData['question'] as String,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                summaryData['user_answer'] as String,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 187, 185, 185),
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                summaryData['correct_answer'] as String,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 23, 219, 111),
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }
}

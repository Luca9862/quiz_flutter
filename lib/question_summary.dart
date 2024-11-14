import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
          child: Column(
        children: summaryData.map((data) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 25,
                height: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(165, 201, 153, 251)
                ),
                child: Text(
                  ((data['question_index'] as int) + 1).toString(),
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                  child: Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data['question'] as String,
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 5),
                    Text(data['user_answer'] as String,
                        style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 201, 153, 251),
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    Text(data['correct_answer'] as String,
                        style: GoogleFonts.lato(
                            color: const Color.fromARGB(145, 201, 153, 251),
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ))
            ],
          );
        }).toList(),
      )),
    );
  }
}

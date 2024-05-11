import 'dart:io';

void main() {
  // Define the quiz questions and answers
  List<Map<String, dynamic>> questions = [
    {"question": "Dart is developed by Google.", "answer": true},
    {"question": "Dart is a statically typed language.", "answer": false},
    {"question": "Dart is a OOP.", "answer": true},
    {"question": "dart is an open-source.", "answer": true},
    {"question": "dart is originally developed by Microsoft.", "answer": false},
    // Add more questions.
  ];

  int score = 0;

  for (var i = 0; i < questions.length; i++) {
    print("Question ${i + 1}: ${questions[i]['question']}");
    print("Enter 'true' or 'false': ");
    String userInput = stdin.readLineSync()!.toLowerCase();
    bool userAnswer = userInput == 'true';

    // Check user's answer
    if (userAnswer == questions[i]['answer']) {
      print("Correct!");
      score++;
    } else {
      print("Incorrect!");
    }
  }

  //Finl Score.
  print("Quiz complete! Your score is: $score out of ${questions.length}");
}

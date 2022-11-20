import 'package:flutter/material.dart';

class QuestionView extends StatelessWidget {
  const QuestionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF386974),
        title: const Text("QuestionPaper"),
      ),
      body: const Center(
        child: Text("Welcome to questiobpaper vew"),
      ),
    );
  }
}

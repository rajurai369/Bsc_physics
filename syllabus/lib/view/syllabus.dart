import 'package:flutter/material.dart';

class SyllabusView extends StatelessWidget {
  const SyllabusView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF386974),
        title: const Text("Welcome to syllabus"),
      ),
      body: const Center(
        child: Text("Physics"),
      ),
      );
  }
}
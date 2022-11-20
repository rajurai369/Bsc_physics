import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF386974),
        title: const Text("Welcome to about us"),),
      body: const Center(
        child: Text("This is bsc physics"),
      )
    ,);
  }
}
import 'package:flutter/material.dart';

class NoticeView extends StatelessWidget {
  const NoticeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF386974),
        title: const Text("Welcome to Notification"),

      ),
      body: const Center(child: Text("Result is Published")),
    );
  }
}
import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF386974),
        title: const Text("Welcome to settin")
      ,),
      body: const Center(
        child: Text("Welcome to seting"),
      ),
    );
  }
}
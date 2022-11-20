import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syllabus/view/notes.dart';
import 'package:syllabus/view/notification.dart';
import 'package:syllabus/view/question.dart';
import 'package:syllabus/view/syllabus.dart';

// ignore: import_of_legacy_library_into_null_safe

import '../widgets/sidebar.dart';
import '../widgets/slider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int index = 2;
// #21A002
  @override
  Widget build(BuildContext context) {
    
    final items = [
      const Icon(Icons.home, size: 30),
      const Icon(Icons.search, size: 30),
      const Icon(Icons.contacts, size: 30),
      const Icon(Icons.settings, size: 30),
      const Icon(Icons.person, size: 30),
    ];
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: const IconThemeData(color: Colors.white)),
        child: CurvedNavigationBar(
          animationCurve: Curves.easeInOut,
          // animationDuration: Duration(milliseconds: 300),
          color: const Color(0xFF386974),
          buttonBackgroundColor: const Color(0xFF2238F9),
          backgroundColor: Colors.transparent,
          height: 60,
          items: items,
          index: index,
          onTap: (index) => setState(() => this.index = index),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF386974),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
                onTap: () {
                  Get.to(() => const NoticeView());
                },
                child: const Icon(Icons.notifications)),
          ),
        ],
        title: const Text("Bsc Physics Syllabus"),
      ),
      drawer: const SideBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Center(
            child: Expanded(
              child: Wrap(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Slide(),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => const SyllabusView());
                          },
                          child: Card(
                            elevation: 10,
                            child: SizedBox(
                                height: 150,
                                width: 150,
                                child: Image.asset("images/syllabus.png")),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Syllabus"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => const QuestionView());
                          },
                          child: Card(
                            elevation: 10,
                            child: SizedBox(
                                height: 150,
                                width: 150,
                                child: Image.asset("images/question.png")),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Questions"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => const NoteView());
                          },
                          child: Card(
                            elevation: 10,
                            child: SizedBox(
                                height: 150,
                                width: 150,
                                child: Image.asset("images/note.png")),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Notes"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                       
                        InkWell(
                          child: Card(
                            elevation: 10,
                            child: SizedBox(
                              height: 150,
                              width: 150,
                              child: Image.asset("images/youtube.png"),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Youtube"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syllabus/view/about.dart';
import 'package:syllabus/view/contact.dart';
import 'package:syllabus/view/setting.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xFF386974),
            ),
            accountName: const Text("Bsc Physics Syllabus"),
            accountEmail: const Text("physics123@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: const Color(0xFF386974),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "images/Einstein.jpg",
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {
              // Navigator.pop(context);
              Get.to(() => const SettingView());
            },
          ),
          ListTile(
            leading: const Icon(Icons.contacts),
            title: const Text("Contact Us"),
            onTap: () {
              // Navigator.pop(context);
              Get.to(() => const ContactView());
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("About us"),
            onTap: () {
              // Navigator.pop(context);
              Get.to(() => const AboutView());
            },
          ),
        ],
      ),
    );
  }
}

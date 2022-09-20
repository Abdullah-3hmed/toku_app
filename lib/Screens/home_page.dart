import 'package:flutter/material.dart';
import 'package:toku_app/Screens/colorsPage.dart';
import 'package:toku_app/Screens/family_members.dart';
import 'package:toku_app/Screens/phrasesPage.dart';

import '../Components/category.dart';
import 'numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfef6db),
      appBar: AppBar(
        title: const Text(
          'Toku',
          style: TextStyle(
            fontSize: 26,
          ),
        ),
        backgroundColor: const Color(0xFF6b4226),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const NumbersPage();
                  },
                ),
              );
            },
            text: 'Numbers',
            color: Colors.orange,
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const FamilyMembers();
                  },
                ),
              );
            },
            text: 'Family Members',
            color: Colors.green,
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ColorsPage();
                  },
                ),
              );
            },
            text: 'Colors',
            color: Colors.purple,
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const PhrasesPage();
                  },
                ),
              );
            },
            text: 'Phrases',
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

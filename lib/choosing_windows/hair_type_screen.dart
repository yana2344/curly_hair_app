import 'package:flutter/material.dart';

import 'package:my_curly_app/Main_screen.dart';

import 'package:my_curly_app/main.dart';
class HairTypeScreen extends StatelessWidget {
  final List<Map<String, String>> hairTypes = [
    {'name': '1A', 'image': 'assets/images/1a.jpg'},
    {'name': '1B', 'image': 'assets/images/1b.webp'},
    {'name': '1C', 'image': 'assets/images/1c.jpg'},
    {'name': '2A', 'image': 'assets/images/2a.webp'},
    {'name': '2B', 'image': 'assets/images/2b.png'},
    {'name': '2C', 'image': 'assets/images/2c.jpg'},
    {'name': '3A', 'image': 'assets/images/3a.jpg'},
    {'name': '3B', 'image': 'assets/images/3b.jpg'},
    {'name': '3C', 'image': 'assets/images/3c.jpg'},
    {'name': '4A', 'image': 'assets/images/4a.jpg'},
    {'name': '4B', 'image': 'assets/images/4b.webp'},
    {'name': '4C', 'image': 'assets/images/4c.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Select Hair Type")),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // 3 колонки
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: hairTypes.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Зберегти вибір і перейти далі
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => MainScreen(),
                ),
              );
            },
            child: Card(
              elevation: 2,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    hairTypes[index]['image']!,
                    height: 70,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    hairTypes[index]['name']!,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

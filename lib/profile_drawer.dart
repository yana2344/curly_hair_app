import 'package:flutter/material.dart';
import 'package:my_curly_app/components/custom_progress_bar.dart';

class CurlyDrawer extends StatefulWidget {
  const CurlyDrawer({Key? key}) : super(key: key);

  @override
  State<CurlyDrawer> createState() => _CurlyDrawerState();
}

class _CurlyDrawerState extends State<CurlyDrawer> {
  String? selectedHairType;

  final List<String> hairTypes = [
    '1A', '1B', '1C',
    '2A', '2B', '2C',
    '3A', '3B', '3C',
    '4A', '4B', '4C',
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
             currentAccountPicture:  CircleAvatar(
              child: ClipOval(),
               ),
              accountName: Text ('Name'),
              accountEmail: Text('Email')),
          ListTile(
            title: const Text(
              'Hair Profile',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey[200], // фон боксу
                  borderRadius: BorderRadius.circular(10), // заокруглені кути
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Hair Type: ',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Porosity: ',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Density: ',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            title: const Text(
              'Hair Journey',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey[200], // фон
                  borderRadius: BorderRadius.circular(10), // заокруглені кути
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Progress і Goal текст
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Progress: ',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),

                    // Лінія прогресу
                    CustomProgressBar(
                      progress: 0.7, // 40%
                      goal: 'Healthy curls',
                    ),

                    Text(
                      'Goal: ',
                      style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
            ),
          ),
    const ListTile(
      leading: Icon (Icons.favorite, color: Colors.red,),
    title: Text(
    'Saved Items',
    style: TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    ),
    ),
    ),
          const ListTile(
            leading: Icon (Icons.history_rounded, color: Colors.deepPurple,),
            title: Text(
              'Hair history',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const ListTile(
            leading: Icon (Icons.settings, color: Colors.black),
            title: Text(
              'Settings',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const ListTile(
            leading: Icon (Icons.logout_outlined, color: Colors.purple),
            title: Text(
              'LogOut',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

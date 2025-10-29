import 'package:flutter/material.dart';
import 'package:my_curly_app/screens/main/HomeScreen.dart';
import 'package:my_curly_app/screens/main/ProductsScreen.dart';
import 'package:my_curly_app/screens/main/RoutinesScreen.dart';
import 'package:my_curly_app/screens/main/ForumScreen.dart';
import 'package:my_curly_app/screens/main/TipsScreen.dart';
import 'package:my_curly_app/profile_drawer.dart';



class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static  final List<Widget> _screens = <Widget>[
    const HomeScreen(),
    RoutinesScreen(),
    const TipsScreen(),
    const ForumScreen(),
    const ProductsScreen(),
  ];
// hjj
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      ),
      body: Center(
        child: _screens[_selectedIndex],
      ),
      drawer: const CurlyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.purple,size: 40),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.type_specimen, color: Colors.purple),
            label: 'Routines',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb, color: Colors.purple),
            label: 'Tips',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forum_outlined, color: Colors.purple),
            label: 'Forum',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag, color: Colors.purple),
            label: 'Products',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }
}


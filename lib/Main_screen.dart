import 'package:flutter/material.dart';
import 'package:my_curly_app/home_screen.dart';
import 'package:my_curly_app/products_screen.dart';
import 'package:my_curly_app/routines_screen.dart';
import 'package:my_curly_app/forum_screen.dart';
import 'package:my_curly_app/tips_screen.dart';
import 'package:my_curly_app/profile_drawer.dart';
import 'package:my_curly_app/choosing_windows//hair_type_screen.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static  List<Widget> _screens = <Widget>[
    HomeScreen(),
    RoutinesScreen(),
    TipsScreen(),
    ForumScreen(),
    ProductsScreen(),
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
            icon: Image.asset(
              'assets/images/girl.png',
              width: 40,
              height: 40,
            ),
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


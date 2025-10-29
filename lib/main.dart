import 'package:flutter/material.dart';
import 'package:my_curly_app/Main_screen.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const CurlyHairApp());
}

class CurlyHairApp extends StatelessWidget {
  const CurlyHairApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CurlyMe',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MainScreen(),
    );
  }
}








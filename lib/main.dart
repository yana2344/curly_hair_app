import 'package:firebase_core/firebase_core.dart';
import 'package:my_curly_app/login_page.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:my_curly_app/Main_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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








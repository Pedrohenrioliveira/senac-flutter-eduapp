import 'package:flutter/material.dart';
import 'views/view.dart';  // importe sua tela aqui

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Education App',
      debugShowCheckedModeBanner: false,
      home: const EducationAppMainScreen(),  // tela inicial
    );
  }
}
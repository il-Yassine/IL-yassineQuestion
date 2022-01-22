import 'package:faucon_qcm/screens/quest_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Quizz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily:"Muli",
      ),
      home: const QuestScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff23293f),
      body: Center(
        child: Text("Let's code the Flutter Quizz App"),
      ),
    );
  }
}

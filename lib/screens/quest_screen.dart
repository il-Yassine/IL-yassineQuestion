// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:faucon_qcm/brain/compute_score.dart';
import 'package:faucon_qcm/brain/get_score_color.dart';
import 'package:faucon_qcm/brain/get_score_message.dart';
import 'package:faucon_qcm/color.dart';
import 'package:faucon_qcm/data/quizzes_list.dart';
import 'package:faucon_qcm/models/question.dart';
import 'package:faucon_qcm/screens/score_screen.dart';
import 'package:flutter/material.dart';

class QuestScreen extends StatefulWidget {
  const QuestScreen({Key? key}) : super(key: key);

  @override
  _QuestScreenState createState() => _QuestScreenState();
}

class _QuestScreenState extends State<QuestScreen> {
  Color color1 = unselectedQuestionColor;
  Color color2 = unselectedQuestionColor;
  Color color3 = unselectedQuestionColor;
  Color color4 = unselectedQuestionColor;
  int? current;
  late int indexQuestion;
  late int indexReponse;
  late Color coulval;
  late String mesVal;
  late double scoreVal;

  @override
  void initState() {
    indexQuestion = 0;
    indexReponse = 0;
    mesVal = '';
    scoreVal = 0;
    coulval = unselectedQuestionColor;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff23293f),
      appBar: AppBar(
        backgroundColor: Color(0xff23293f),
        title: const Text("Flutter Quiz"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: [
              SizedBox(height: 10.0),
              Text(
                allQuizzes[indexQuestion].question,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              Divider(
                thickness: 1.5,
                color: Colors.white,
              ),
              SizedBox(
                height: 80,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    current = 1;
                    color1 = selectedQuestionColor;
                    color2 = unselectedQuestionColor;
                    color3 = unselectedQuestionColor;
                    color4 = unselectedQuestionColor;
                  });
                },
                child: Bouton(
                  content: allQuizzes[indexQuestion].possibleAnswers[0],
                  contents: 'A',
                  color: color1,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    current = 2;
                    color2 = selectedQuestionColor;
                    color1 = unselectedQuestionColor;
                    color3 = unselectedQuestionColor;
                    color4 = unselectedQuestionColor;
                  });
                },
                child: Bouton(
                  content: allQuizzes[indexQuestion].possibleAnswers[1],
                  contents: 'B',
                  color: color2,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    current = 3;
                    color3 = selectedQuestionColor;
                    color2 = unselectedQuestionColor;
                    color1 = unselectedQuestionColor;
                    color4 = unselectedQuestionColor;
                  });
                },
                child: Bouton(
                  content: allQuizzes[indexQuestion].possibleAnswers[2],
                  contents: 'C',
                  color: color3,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    current = 4;
                    color4 = selectedQuestionColor;
                    color2 = unselectedQuestionColor;
                    color3 = unselectedQuestionColor;
                    color1 = unselectedQuestionColor;
                  });
                },
                child: Bouton(
                  content: allQuizzes[indexQuestion].possibleAnswers[3],
                  contents: 'D',
                  color: color4,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          setState(() {
            if (indexQuestion >= 5) {
             
              if (color1 == selectedQuestionColor) {
                ChoixReponse(indexQuestion, 0);
              }
              Color coul = get_score_color(Scor);
              String mes = get_score_message(Scor);
              double scor = Scor;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScoreScreen(
                    coulVal: coul,
                    mesVal: mes,
                    scoreVal: (scor*100),
                  ),
                ),
              );
              indexQuestion = 0;
              Scor = 0;
              color1 = unselectedQuestionColor;
              color2 = unselectedQuestionColor;
              color3 = unselectedQuestionColor;
              color4 = unselectedQuestionColor;
            } else {
              if (color1 == selectedQuestionColor) {
                ChoixReponse(indexQuestion, 0);
              } 
              if (color2 == selectedQuestionColor) {
                ChoixReponse(indexQuestion, 1);
              } 
              if (color3 == selectedQuestionColor) {
                ChoixReponse(indexQuestion, 2);
              } 
              if (color4 == selectedQuestionColor) {
                ChoixReponse(indexQuestion, 3);
              }

              indexQuestion += 1;
              color1 = unselectedQuestionColor;
              color2 = unselectedQuestionColor;
              color3 = unselectedQuestionColor;
              color4 = unselectedQuestionColor;
            }
          },
          );
        },
        child: Container(
          height: 60.0,
          width: 330,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Color(0xffe68332),
          ),
          child: const Text(
            "SUIVANT",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}

class Bouton extends StatelessWidget {
  final content;
  final contents;
  final Color color;
  const Bouton({
    Key? key,
    required this.content,
    required this.color,
    required this.contents,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80.0,
        width: 300.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: color,
        ),
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Color(0xffe68332),
              ),
              child: TextButton(
                onPressed: null,
                child: Text(
                  contents.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Flexible(
              child: TextButton(
                onPressed: null,
                style: TextButton.styleFrom(primary: Colors.black),
                child: Text(
                  content.toString(),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )
          ],
        ));
  }
}

import 'package:faucon_qcm/models/question.dart';

// ignore: deprecated_member_use
List<Quiz> allQuizzes = [Objet1, Objet2, Objet3, Objet4, Objet5, Objet6];

Quiz Objet1 = Quiz(
    question: '1.Qu\'est - ce que Flutter ?',
    correctAnswerIndex: 2,
    possibleAnswers: ([
      " Un SDK permettant de développer des applications crossplatform",
      "Un package permettant de développer des applications crossplatform",
      "Un framework permettant de développer des applications crossplatform",
      "Rien de tout ça"
    ]));
Quiz Objet2 = Quiz(
  question: "2.Quelle entreprise a développé Flutter ?",
  correctAnswerIndex: 1,
  possibleAnswers: (["Google", "Amazon", "Facebook", "Apple"]),
);

Quiz Objet3 = Quiz(
  question: "3.En quelle année Flutter a t -il été développé?",
  correctAnswerIndex: 2,
  possibleAnswers: ["2012 ", "2015", "2017", "2018"],
);
Quiz Objet4 = Quiz(
  question: "4.Sur quel langage Flutter est-il basé ?",
  correctAnswerIndex: 1,
  possibleAnswers: ["GoLang ", "Rust", "PHP", "Dart"],
);
Quiz Objet5 = Quiz(
  question: "5. En Flutter, tout est ...",
  correctAnswerIndex: 1,
  possibleAnswers: ["Stateless", "Fonction", "Widget", "Column"],
);
Quiz Objet6 = Quiz(
  question: "6.En Flutter, les widgets sont divisés en ...",
  correctAnswerIndex: 0,
  possibleAnswers: [
    "2 grandes catégories",
    " 4 grandes catégories",
    "3 grandes catégories",
    "Pas de classification"
  ],
);
Question(int num) {
  if (num == 1) return Objet1;
}

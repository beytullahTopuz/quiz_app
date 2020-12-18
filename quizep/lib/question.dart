import 'package:flutter/material.dart';
import 'package:quiz_view/quiz_view.dart';
import 'package:quizep/models/soru.dart';

import 'data/data.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int index = 0;
  final _scaffoldAnahtari = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldAnahtari,
      // backgroundColor: (Colors.amberAccent),
      body: Column(
        children: [
          quizOlustur(
              DUMMY_QUESTIONS[index].soruId, context, DUMMY_QUESTIONS[index]),
          FloatingActionButton(
            onPressed: _sonrakiSoruyaGec,
            child: Icon(Icons.next_plan),
          )
        ],
      ),
    );
  }

  _sonrakiSoruyaGec() {
    setState(() {
      if (index == 2) {
        index = -1;
      }

      index++;
    });
  }

  Widget quizOlustur(int questionIndex, BuildContext context, Question soru) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.all(8),
      color: Colors.white12,
      child: Container(
        padding: EdgeInsets.all(15),
        child: QuizView(
            showCorrect: true,
            questionTag: questionIndex.toString(),
            questionColor: Colors.cyan,
            tagColor: Colors.black,
            tagBackgroundColor: Colors.white,
            answerColor: Colors.greenAccent,
            answerBackgroundColor: Colors.white,
            backgroundColor: Colors.deepOrangeAccent,
            image: Container(
              width: 100,
              height: 100,
              child: Image.network(
                soru.imgUrl,
                fit: BoxFit.fill,
              ),
            ),
            question: soru.soru,
            height: (MediaQuery.of(context).size.height - 180),
            width: MediaQuery.of(context).size.width,
            rightAnswer: soru.dogruCevap,
            wrongAnswers: soru.secenekler,
            onRightAnswer: () {
              _scaffoldAnahtari.currentState.showSnackBar(SnackBar(
                content: Text(
                  "Tebrikler Doğru cevap",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                duration: Duration(seconds: 1),
                backgroundColor: Colors.green,
              ));
            },
            onWrongAnswer: () {
              _scaffoldAnahtari.currentState.showSnackBar(SnackBar(
                  backgroundColor: (Colors.red),
                  content: Text(
                    "Yanlış cevap",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )));
            }),
      ),
    );
  }
}

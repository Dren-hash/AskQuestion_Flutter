import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questonIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questonIndex = _questonIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      //this is a list of the questions
      'What is your favorite color?',
      'What is your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demo App'),
        ),
        body: _questonIndex <
                questions.length //take not of the ternary operator here
            ? Column(
                children: <Widget>[
                  Question(questions[_questonIndex]),
                  RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text('Answer 1'),
                    onPressed: _answerQuestion,
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text('Answer 2'),
                    onPressed: _answerQuestion,
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text('Answer 3'),
                    onPressed: _answerQuestion,
                  ),
                ],
              )
            : Center(
                child: Text('You dit it!'),
              ),
      ),
    );
  }
}

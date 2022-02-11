import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List questions = [
    {
      "question": "(1) Which of the following is not an OOPS concept?",
      "a": "Encapsulation",
      "b": "Polymorphism",
      "c": "Exception",
      "d": "Abstraction",
      "answer": "Exception",
    },
    {
      "question":
          "(2) Which feature of OOPS described the reusability of code?",
      "a": "Abstraction",
      "b": "Encapsulation",
      "c": "Polymorphism",
      "d": "Inheritance",
      "answer": "Inheritance",
    },
    {
      "question":
          "(3) Which among the following feature is not in the general definition of OOPS?",
      "a": "Modularity",
      "b": "Efiicient code",
      "c": "Code reusability",
      "d": "Duplicate of redundant data",
      "answer": "Duplicate of redundant data",
    },
    {
      "question":
          "(4) Which feature of OOPS derives the class from another class?",
      "a": "Inheritance",
      "b": "Data hiding",
      "c": "Encapsulation",
      "d": "Polymorphism",
      "answer": "Inheritance",
    },
    {
      "question":
          "(5) Which two features of object-oriented programming are the same?",
      "a": "Abstraction and Polymorphism",
      "b": "Inheritance and Encapsulation",
      "c": "Encapsulation and Polymorphism",
      "d": "Encapsulation and Abstraction",
      "answer": "Encapsulation and Abstraction",
    },
    {
      "question":
          "(6) Which of the following definition is incorrect for polymorphism?",
      "a": "Polymorphism helps in redefining the same functionality",
      "b":
          "Polymorphism concept is the feature of object-oriented programming (OOP)",
      "c": "It always increases the overhead of function definition",
      "d": "Ease in the readability of the program",
      "answer": "It always increases the overhead of function definition",
    },
    {
      "question":
          "(7) Which of the following OOP concept binds the code and data together and keeps them secure from the outside world?",
      "a": "Polymorphism",
      "b": "Inheritance",
      "c": "Abstraction",
      "d": "Encapsulation",
      "answer": "Encapsulation",
    },
    {
      "question":
          "(8) Which member of the superclass is never accessible to the subclass?",
      "a": "Public member",
      "b": "Protected member",
      "c": "Private member",
      "d": "All of the mentioned",
      "answer": "Private member",
    },
    {
      "question": "(9) Which class cannot create its instance?",
      "a": "Parent class",
      "b": "Nested class",
      "c": "Anonymous class",
      "d": "Abstract class",
      "answer": "Abstract class",
    },
    {
      "question":
          "(10) Which definition best defines the concept of abstraction?",
      "a": "Hides the important data",
      "b": "Hides the implementation and showing only the features",
      "c": "Hiding the features",
      "d": "Showing the important data",
      "answer": "Hides the implementation and showing only the features",
    }
  ];

  var rightcount = 0;
  var wrongcount = 0;
  var quesindex = 0;

  checkAnswer(userInput) {
    if (userInput == questions[quesindex]["answer"]) {
      setState(() {
        rightcount += 1;
      });
    } else {
      setState(() {
        wrongcount += 1;
      });
    }
  }

  prevQues() {
    setState(() {
      if (quesindex > 0) {
        quesindex -= 1;
      }
    });
  }

  nextQues() {
    setState(() {
      if (quesindex <= (questions.length - 1)) {
        quesindex += 1;
      }
    });
  }

  reset() {
    setState(() {
      rightcount = 0;
      wrongcount = 0;
      quesindex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("OOP Quiz"),
            centerTitle: true,
          ),
          body: Container(
              width: double.infinity,
              color: Colors.lightBlue[400],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      color: Colors.white,
                      width: double.infinity,
                      child: Text("${questions[quesindex]['question']}")),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      onPressed: () {
                        checkAnswer(questions[quesindex]['a']);
                      },
                      child: Text("${questions[quesindex]['a']}"),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      onPressed: () {
                        checkAnswer(questions[quesindex]['b']);
                      },
                      child: Text("${questions[quesindex]['b']}"),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      onPressed: () {
                        checkAnswer(questions[quesindex]['c']);
                      },
                      child: Text("${questions[quesindex]['c']}"),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      onPressed: () {
                        checkAnswer(questions[quesindex]['d']);
                      },
                      child: Text("${questions[quesindex]['d']}"),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    child: Text(
                      "Total questions: ${questions.length}, Right: ${rightcount}, Wrong: ${wrongcount}",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.white),
                          onPressed: () {
                            prevQues();
                          },
                          child: Text("Back",
                              style: TextStyle(color: Colors.black))),
                      ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.black),
                          onPressed: () {
                            reset();
                          },
                          // ignore: prefer_const_constructors
                          child: Text("Reset")),
                      ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.white),
                          onPressed: () {
                            nextQues();
                          },
                          // ignore: prefer_const_constructors
                          child: Text("Next",
                              style: TextStyle(color: Colors.black))),
                    ],
                  )
                ],
              ))),
    );
  }
}

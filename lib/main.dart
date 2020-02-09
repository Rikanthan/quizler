
import 'question.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(QuizApp());


class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black45,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Quiz(),

          ),
        )
      ),
    );
  }
}



class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List <Icon> Scorekeeper=[

  ];


  List<question> qs=[ question( 'Albert Einstein was awarded the Nobel Prize in Physics.',true),
    question('The American Civil War ended in 1776.',false),
    question('A right triangle can never be equilateral.',true),
    question('There are seven red stripes in the United States flag.',true),
    question('No bird can fly backwards.',false),
    question('Freddy Kreuger is the villain in the “Friday the 13th” movies.',false),
    question('Baby koalas are called joeys.',true),
    question('Brazil is the only country in the Americas whose official language is Portuguese.',true),

  ];
  int questno=0;
  @override





  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded
      (
    flex:5,

        child: Padding(
          padding: EdgeInsets.all(10.0),
            child:  Center(
                child: Text(
                  qs[questno].ques,

                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight:FontWeight.bold,
                    color: Colors.white70,
                  ),
                ),
            ),
        ),



    ),
    Expanded(
      child: Padding(
        padding: EdgeInsets.all(10.0),

          child: FlatButton(
          color:Colors.green,
            child: Text(
                'True',
            style: TextStyle(
              color: Colors.white70,
                     ),
            ),

            onPressed: (){
            bool correctanswer=qs[questno].ans;
            if(correctanswer==true)
              {
                print('your answer is correct');
              }
            else
              {
                print('your answer incorrect');
              }

            setState(() {

                  Scorekeeper.add(
                    Icon(
                     Icons.check,
                      color: Colors.green,
                    )

              );
              questno++;
            });

                },
            ),



        ),
      ),

    Expanded(
    child: Padding(
    padding: EdgeInsets.all(10.0),

    child: FlatButton(

    color:Colors.red,
    child: Text(
    'False',
    style: TextStyle(
        color: Colors.white70,
    ),
    ),
    onPressed: (){
    bool correctanswer=qs[questno].ans;
      if(correctanswer==true)
      {
        print('your answer is correct');


      }
      else
      {
        print('your answer incorrect');
      }
      setState(() {
        Scorekeeper.add(
            Icon(
              Icons.clear,
              color:Colors.red,
            )
        );
        questno++;
      });

              },
            ),


            ),
    ),




      ],

    );
  }
}



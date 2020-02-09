

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
  List <String> questions=['Albert Einstein was awarded the Nobel Prize in Physics.','The American Civil War ended in 1776.',
'A right triangle can never be equilateral.','There are seven red stripes in the United States flag.','No bird can fly backwards.',
'Freddy Kreuger is the villain in the “Friday the 13th” movies.','Baby koalas are called joeys.','Brazil is the only country in the Americas whose official language is Portuguese.'
  ];
  List<bool> answers=[true,false,true,true,false,false,true,true];
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
                  questions[questno]
                  ,
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
            bool correctanswer=answers[questno];
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
      bool correctanswer=answers[questno];
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



        Row(


        )
      ],

    );
  }
}



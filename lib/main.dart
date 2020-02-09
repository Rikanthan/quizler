
import 'package:quiz_app/quiz_brain.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


quiz_b q=quiz_b();
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





  //int questno=0;
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
                  q.getquestion(),

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
            bool correctanswer=q.getanswers();
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
             q.nextquestion();
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
    bool correctanswer=q.getanswers();
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
        q.nextquestion();
      });

              },
            ),


            ),
    ),




      ],

    );
  }
}



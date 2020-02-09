
import 'package:quiz_app/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

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
  List <Icon> Sc=[];

int count=0;
  void checkanswer(bool youranswer)
  {

    bool correctanswer=q.getanswers();
    setState(() {

      if(q.isfinished()==true) {

        Alert(
          context: context,
          type: AlertType.error,
          title: "Attention",
          desc: "You reach the destination",
          buttons: [
            DialogButton(
              child: Text(
                "Quiz finished",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            )
          ],
        ).show();
    q.reset();
        Sc=[];
      }
    else
        {
        if (correctanswer == youranswer) {
            Sc.add(
                Icon(
                  Icons.check,
                  color: Colors.green,
                )
                  );
            print('true');
            print(count);
          }

          else {
            Sc.add(
                Icon(
                  Icons.close,
                  color: Colors.red,
                )

            );

            print('false');

          }
        q.nextquestion();
          count++;
        }


        });

  }





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
           checkanswer(true);

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
    checkanswer(false);

              },
            ),


            ),
    ),
      Row(
        children: Sc,
      )



      ],

    );
  }
}



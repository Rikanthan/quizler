import 'package:quiz_app/main.dart';
import 'package:quiz_app/question.dart';



class quiz_b
{
  int _questionno=0;
  List<question> _qs=[ question( 'Albert Einstein was awarded the Nobel Prize in Physics.',true),
  question('The American Civil War ended in 1776.',false),
  question('A right triangle can never be equilateral.',true),
  question('There are seven red stripes in the United States flag.',true),
  question('No bird can fly backwards.',false),
  question('Freddy Kreuger is the villain in the “Friday the 13th” movies.',false),
  question('Baby koalas are called joeys.',true),
  question('Brazil is the only country in the Americas whose official language is Portuguese.',true)];

  void nextquestion()
  {
    if(_questionno<_qs.length-1)
      {
        _questionno++;
      }
  }



  String getquestion()
  {
    return _qs[_questionno].ques;
  }

  bool getanswers()
  {
    return _qs[_questionno].ans;
  }
  bool isfinished()
  {

    if(_questionno>=_qs.length-1)
      {
         return true;
      }
    else
      {
         return false;
      }


    }
    void reset()
    {

          _questionno=0;

    }
}

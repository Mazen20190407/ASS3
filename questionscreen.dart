import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:task3/quiz_model/quiz.dart';
import 'package:task3/quiz_model/finalreselt/result.dart';

class QuestionScreen extends StatefulWidget {
  int index;
  int count=0;
  QuestionScreen(this.index);

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {


  Quiz quiz = Quiz();
  bool isCorrect = false;
  bool isWrong = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              quiz.questions[widget.index].question,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0
              ),
            ),
            Center(
              child: Visibility(
                child: Icon(Icons.check,color: Colors.green,size: 40.0,),
                visible: isCorrect,
                replacement: Visibility(
                  child: Icon(Icons.close_outlined,color: Colors.red,size: 40.0,),
                  visible: isWrong,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                    child: Container(
                      width: 150.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Center(child:Text('True',style: TextStyle(fontSize: 20.0),)),
                    ),
                    onPressed: () {
                      if(widget.index == 2){
                        setState(() {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Result(widget.count),
                            ),
                          );
                        });

                      }
                      else if(quiz.questions[widget.index].answer == true){
                        widget.count++;
                        setState(() {
                          isCorrect = true;
                          isWrong = false;
                        });
                      }
                      else {
                        setState(() {
                          isCorrect = false;
                          isWrong = true;
                        });
                      }
                    }
                ),
                MaterialButton(
                    child: Container(
                      width: 150.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(style: BorderStyle.solid , color: Colors.grey,width: 5 )
                      ),
                      child: Center(child:Text('False',style: TextStyle(fontSize: 20.0),)),
                    ),

                    onPressed: () {
                      if(widget.index == 2){
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Result(widget.count),
                          ),
                        );

                      }
                      else if(quiz.questions[widget.index].answer == true){
                        widget.count++;
                        setState(() {
                          isCorrect = false;
                          isWrong = true;
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(style: BorderStyle.solid , color: Colors.red,width: 5 )
                          );
                        });
                      }
                      else {
                        setState(() {
                          isCorrect = true;
                          isWrong = false;
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(style: BorderStyle.solid , color: Colors.red,width: 5 )
                          );
                        });
                      }
                    }
                )//,
              ],
            ),
            MaterialButton(
              child: Container(
                width: 200.0,
                height: 70.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Center(child:Text('Next',style: TextStyle(fontSize: 20.0),)),
              ),
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => QuestionScreen(widget.index +1),
                ),


              ),
            )//,
          ],
        ),
      ),
    );
  }
}




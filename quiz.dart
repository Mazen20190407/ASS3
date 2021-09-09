import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task3/quiz_model/question.dart';

class Quiz{
  List<Question> questions = [
    Question('do you have a cool name ?',true),
    Question('are you happy ?',false),
    Question('are you enjoying the course ?',true),

  ];


}
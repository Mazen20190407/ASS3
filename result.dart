import 'package:flutter/material.dart';
import 'package:task3/questionScreen.dart';
class Result extends StatelessWidget {

  int result;
  Result (this.result);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Text(
            "The result is $result",
            style: TextStyle(fontSize: 30, color: Colors.deepPurple),
          ),
        )

    );
  }
}

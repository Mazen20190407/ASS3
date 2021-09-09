import 'package:flutter/material.dart';
import 'package:task3/questionScreen.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController? _controller;
  int index = 0 ;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    print('hello from init');
  }

  @override
  void dispose() {
    print('hello from dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('hello from build');
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome to my Quiz',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0
                ),
              ),
              MaterialButton(
                child: Container(
                  width: 200.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Center(child:Text('Start',style: TextStyle(fontSize: 20.0),)),
                ),
                onPressed: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuestionScreen(index),
                  ),
                ),
              )//
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class ResultPage extends StatelessWidget {

//   String Value;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           Text(result! < 18
//               ? 'You are under weight'
//               : result! < 25
//                   ? 'You are perfect'
//                   : 'You are over weight')
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'formula.dart';

class ResultPage extends StatefulWidget {
  int weight;
  int height;
  int age;

  ResultPage(@required this.weight, @required this.height, @required this.age);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  Logic logic = Logic();
  double bmiResult = 0;
  @override
  void initState() {
    bmiResult = logic.calculateBMI(widget.height, widget.weight);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 53, 65, 62),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'BMI Result is',
            style: TextStyle(
                fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
          )),
          SizedBox(
            height: 10,
          ),
          Text('$bmiResult',
              style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 220,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 150, 147, 124),
                border: Border(
                  top: BorderSide(
                      width: 4,
                      color: Colors.teal,
                      style: BorderStyle.solid), //BorderSide
                  bottom: BorderSide(
                      width: 4,
                      color: Colors.yellow,
                      style: BorderStyle.solid), //BorderSide
                  left: BorderSide(
                      width: 4,
                      color: Colors.teal,
                      style: BorderStyle.solid), //Borderside
                  right: BorderSide(
                      width: 4,
                      color: Colors.yellow,
                      style: BorderStyle.solid), //BorderSide
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  bmiResult < 18
                      ? 'Your weight is less then normal weight, so please gain some weight'
                      : bmiResult < 25
                          ? 'You have a nornal weight. Good job and keep it up'
                          : 'You have a higher weight then normal. Try to lose your weight through activity you want',
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Container(
                height: 50,
                width: 240,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 110, 120, 129),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    'Re-Calculate',
                    style: TextStyle(fontSize: 30, color: Colors.yellow),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

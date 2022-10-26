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
      body: Column(
        children: [Text('BMI Result is'), Text('$bmiResult')],
      ),
    );
  }
}

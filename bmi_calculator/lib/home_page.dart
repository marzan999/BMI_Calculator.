import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 53, 65, 62),
        body: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.only(
                    //     bottomLeft: Radius.circular(25),
                    //     bottomRight: Radius.circular(25)),
                    color: Colors.transparent,
                  ),
                  child: Center(
                      child: Text(
                    'BMI Calculator',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  )),
                )),
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35)),
                              color: Colors.teal,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.male,
                                    size: 55,
                                    color: Color.fromARGB(255, 233, 199, 148),
                                  ),
                                  Text(
                                    'Male',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 233, 199, 148),
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35)),
                              color: Colors.teal,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.female,
                                    size: 55,
                                    color: Color.fromARGB(255, 233, 199, 148),
                                  ),
                                  Text(
                                    'Female',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 233, 199, 148),
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                )),
            Expanded(
                flex: 3,
                child: Container(
                  color: Colors.red,
                )),
            Expanded(
                flex: 3,
                child: Container(
                  color: Colors.black,
                )),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.yellow,
                )),
          ],
        ),
      ),
    );
  }
}

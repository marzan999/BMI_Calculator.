import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = true;
  int weight = 50;
  int age = 20;

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
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isMale = true;
                                });
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(35)),
                                // color: Colors.teal,
                                color: isMale == true
                                    ? Colors.teal
                                    : Color.fromARGB(255, 58, 78, 76),
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
                                          color: Color.fromARGB(
                                              255, 233, 199, 148),
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isMale = false;
                                });
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(35)),
                                // color: Colors.teal,
                                color: isMale == true
                                    ? Color.fromARGB(255, 58, 78, 76)
                                    : Colors.teal,
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
                                          color: Color.fromARGB(
                                              255, 233, 199, 148),
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isMale = true;
                                });
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(35)),
                                color: Colors.teal,
                                // color: isMale == true
                                //     ? Colors.teal
                                //     : Color.fromARGB(255, 58, 78, 76),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Icon(
                                    //   Icons.male,
                                    //   size: 55,
                                    //   color: Color.fromARGB(255, 233, 199, 148),
                                    // ),
                                    Text(
                                      'Weight',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 233, 199, 148),
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '$weight',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 233, 199, 148),
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FloatingActionButton(
                                          onPressed: () {
                                            setState(() {
                                              if (weight > 0) {
                                                weight--;
                                              }
                                            });
                                          },
                                          backgroundColor: Color.fromARGB(
                                              255, 133, 152, 155),
                                          child: Icon(
                                            Icons.remove,
                                            size: 30,
                                            color: Colors.yellow,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        FloatingActionButton(
                                          onPressed: () {
                                            setState(() {
                                              weight++;
                                            });
                                          },
                                          backgroundColor: Color.fromARGB(
                                              255, 133, 152, 155),
                                          child: Icon(
                                            Icons.add,
                                            size: 30,
                                            color: Colors.yellow,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isMale = true;
                                });
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(35)),
                                color: Colors.teal,
                                // color: isMale == true
                                //     ? Colors.teal
                                //     : Color.fromARGB(255, 58, 78, 76),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Icon(
                                    //   Icons.male,
                                    //   size: 55,
                                    //   color: Color.fromARGB(255, 233, 199, 148),
                                    // ),
                                    Text(
                                      'Age',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 233, 199, 148),
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '$age',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 233, 199, 148),
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FloatingActionButton(
                                          onPressed: () {
                                            setState(() {
                                              if (age > 0) {
                                                age--;
                                              }
                                            });
                                          },
                                          backgroundColor: Color.fromARGB(
                                              255, 133, 152, 155),
                                          child: Icon(
                                            Icons.remove,
                                            size: 30,
                                            color: Colors.yellow,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        FloatingActionButton(
                                          onPressed: () {
                                            setState(() {
                                              age++;
                                            });
                                          },
                                          backgroundColor: Color.fromARGB(
                                              255, 133, 152, 155),
                                          child: Icon(
                                            Icons.add,
                                            size: 30,
                                            color: Colors.yellow,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 15, left: 20, right: 20),
                  child: Container(
                    width: double.infinity,
                    child: Center(
                      child: GestureDetector(
                        onTap: (() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ResultPage()));
                        }),
                        child: Text(
                          'Calculate',
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromARGB(255, 110, 120, 129)),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

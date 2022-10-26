import 'dart:math';

class Logic {
  double calculateBMI(int height, int weight) {
    // double bmi = weight / pow((height / 100), 2);
    double bmi = weight / ((height / 100) * (height / 100));

    return bmi.floorToDouble();
  }
}

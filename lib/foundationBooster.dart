import 'dart:io';

void main() {
  calc();
}

void calc() {
  String? z, a, b;
  int value1 = 0, value2 = 0, answer = 0;
  print(
      "Enter 1 for addition\nEnter 2 for substraction\nEnter 3 for multiplication\nEnter 4 for division");

  print("Enter a value:");
  z = stdin.readLineSync();

  if (z == '1' || z == '2' || z == '3' || z == '4') {
    print("Enter a 1st value:");
    a = stdin.readLineSync();
    value1 = int.parse(a!);

    print("Enter a 2nd value");
    b = stdin.readLineSync();
    value2 = int.parse(b!);
  }

  switch (z) {
    case '1':
      {
        answer = value1 + value2;
      }
      break;
    case '2':
      {
        answer = value1 - value2;
      }
      break;
    case '3':
      {
        answer = value1 * value2;
      }
      break;
    case '4':
      {
        answer = value1 ~/ value2;
      }
      break;
  }
  if (z == '1') {
    print("$value1+$value2=$answer");
  }
  if (z == '2') {
    print("$value1-$value2=$answer");
  }
  if (z == '3') {
    print("$value1*$value2=$answer");
  }
  if (z == '4') {
    print("$value1/$value2=$answer");
  }
}

import "dart:io";

double calculator(double a, double b, String operation) {
  switch (operation) {
    case "+":
      return a + b;

    case "-":
      return a - b;

    case "*":
      return a * b;

    case "/":
      if (b != 0) {
        return a / b;
      } else {
        throw Exception('Exception: DivisionByZeroException');
      }

    default:
      throw Exception("Exception: Invalid operation");
  }
}

void main(List<String> args) {
  double result;

  try {
    // get number from user
    print("Enter your first number");
    String? input1 = stdin.readLineSync();
    double number1 = double.parse(input1!);

    print("Enter your second number");
    String? input2 = stdin.readLineSync();
    double number2 = double.parse(input2!);
    //input2! dart'a bu null değil'i garanti ediyor

    //get operation from user
    print("Select an operation: +, -, *, /");
    List<String> operations = ["+", "-", "*", "/"];
    String? operation = stdin.readLineSync();
    if (operations.contains(operation)) {
      result = calculator(number1, number2, operation!);
      print(result);
    } else {
      throw Exception("Exception: You entered an invalid operation");
    }
  } catch (e) {
    print("Exception: You entered an invalid value");
    return; //Programı sonlandır
  }
}

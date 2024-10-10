import "dart:io";

void checkEvenNumbers(List<int> a) {
  int evenCounter = 0;
  List<int> evenNumbers = [];
  for (int element in a) {
    if (element % 2 == 0) {
      evenCounter++;
      evenNumbers.add(element);
    }
  }

  if (evenCounter == 0) {
    print("This list has not an even number");
    return;
  }

  print(evenNumbers);
}

void main(List<String> args) {
  List<int> numbers = [];
  int number;
  String? input;
  for (int i = 0; i < 10; i++) {
    try {
      input = stdin.readLineSync();
      number = int.parse(input!);
      numbers.add(number);
    } catch (e) {
      print(e);
      break;
    }
  }

  checkEvenNumbers(numbers);
}

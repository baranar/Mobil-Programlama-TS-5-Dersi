import "Dart:io";

class Student {
  String? name;
  String? surname;
  List<int> notes = [];

  Student(this.name, this.surname);

  void addNote(int note) {
    notes.add(note);
  }

  void avNote() {
    if (notes.isEmpty) {
      print("No grade entry");
      return;
    }

    int sum = 0;
    for (int note in this.notes) {
      sum = sum + note;
    }

    double gpa = sum / notes.length;
    print("$name's GPA: $gpa");
  }
}

void main(List<String> args) {
  //get name
  print("Enter the name");
  String? name = stdin.readLineSync();

  //get surname
  print("Enter the surname");
  String? surname = stdin.readLineSync();

  //create a student object
  Student student = Student(name ?? "Unknown", surname ?? "Unknown");

  //get notes
  while (true) {
    print("Enter the note. If you want to exit enter 'exit'...");
    String? input = stdin.readLineSync();

    if (input == "exit") {
      break;
    }

    try {
      int note = int.parse(input!);
      student.addNote(note);
    } catch (e) {
      print("Invalid note value!");
    }
  }

  //Calculate gpa
  student.avNote();
}

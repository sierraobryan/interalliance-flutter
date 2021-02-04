import 'dart:math';

// example enums
enum Weekday {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday
}

enum Color {
  red,
  green,
  blue
}

class TechOlympicParticipant {
  
  // fields 
  String name;
  int grade;
  String location;
  List<String> techOlympicSessions;

  // constructor
  TechOlympicParticipant(
      this.name,
      this.grade,
      this.location,
      this.techOlympicSessions
      )

  // constructor with named arguments
  TechOlympicParticipant({
    this.name,
    this.grade,
    this.location,
    this.techOlympicSessions
  })
  
  // we could put other functions here 

}

class Examples {

  String name = "Sierra"; // still a string
  int grade = 20; // still an integer
  List<String> techOlympicSessions = ["Flutter"]; // Still a list of Strings

  var nameInferred = "Sierra"; // still a string
  var gradeInferred = 20; // still an integer
  var techOlympicSessionsInferred = ["Flutter"]; // Still a list of Strings

  String publicName = "Sierra"; // public
  String _privateName = "Sierra"; // private

  // instantiate my class
  TechOlympicParticipant sierra = TechOlympicParticipant(
      "Sierra", 20, "Cincinnati, OH", ["Flutter"]
  );

  // instantiate my class with named variables
  TechOlympicParticipant sierra = TechOlympicParticipant(
      name: "Sierra",
      grade: 20,
      location: "Cincinnati, OH",
      techOlympicSessions: ["Flutter"]
  );

  // examples functions
  void sayHello() {
    print("Hello World!");
  }

  bool attendedFlutterSession(List<String> sessions) {
    return sessions.contains("Flutter");
  }

  void main() {
    if (attendedFlutterSession(techOlympicSessions)) {
      print("Attended Flutter session! YAY!");
    }
  }

  void exampleIfStatement() {
    Random random = new Random();
    int randomNumber = random.nextInt(10);
    if (randomNumber > 5) {
      print("$randomNumber > 5");
    } else {
      print("$randomNumber < 5");
    }
  }

  void exampleWhileLoop() {
    int value = 0;
    while (value < 5) {
      print("$value");
      value++;
    }
  }

  void exampleDoWhileLoop() {
    int value = 0;
    do {
      print(value);
      value++;
    } while (value < 5);
  }

  void exampleForLoop() {
    for (int i = 0; i < 5; i++) {
      print(i);
    }

    List<int> list = [1, 2, 3, 4, 5];
    for (int integer in list) {
      print(integer);
    }
  }
}

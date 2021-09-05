import 'dart:ffi';
import 'dart:io';
import 'dart:async';
import 'dart:collection';

enum colors {red, green, blue}

void main(List<String> arguments) {
  print('Hello world!');
  var isOn;

  var isDog = false;

  print("isDog = ${isDog}");
  //this is my first comment

  print("isDog is a ${isDog.runtimeType}");

  int age = 213233;
  const int agei = 21;
  double aged = 21.0;
  int product1 = age * agei;
  String string1 = "Samnit";
  print("String: ${string1.substring(0,6)}");
  print("Patterm position: ${string1.indexOf("am")}");
  print("String contains: ${string1.contains("am")}");

  List name1 = string1.split("");
  print(name1[2]);

  print(name1.elementAt(4));

  // stdout.write("What is your name?\r\n");
  // String? name = stdin.readLineSync();
  // stdout.write("Hello ${name}\r\n");

  stdout.write(colors.values[1]);
  List things = [];
  things.add(1);
  things.add("cats");
  things.add(true);
  print("\n${things}");

  List<int> things1 = [];
  things1.add(1);
  things1.add(2);
  print("\n${things1}");

  Set set1 = {};
  set1.add(1);
  set1.add(2);
  set1.add(1);
  print(set1);

  Queue items = new Queue();
  items.add(1);
  items.add(2);
  items.add(3);
  items.removeFirst();
  items.removeLast();
  print(items);

  Map people = {'dad':'Bryan', 'son':'Chris'};
  print(people['Chris']);
  people.putIfAbsent('daughter', () => 'Heather');
  print(people);


  print("starting");
  int age1 = 40;
  // assert(age1 == 45);
  print('end');


  if(age1 == 15) print('You are 15.');
  if(age1 != 15) print('You are not 15.');

  if(age1 > 18){
    if (age1 == 40) {
      print("Hey oldie!");
    }
  }


  List L1 = ["Chris", "Bryan", "Heather"];

  L1.forEach((name){
    print("Hello ${name}");
  });

  List L2 = ["Chris", "Bryan", "Heather"];

  L2.where((name){
    switch(name) {
      case 'Chris':
        return true;
      case 'Bryan':
        return true;
      case 'Heather':
        return false;
    }
    return true;
  }).forEach(print);


  // Error Handling
  try{
    var age;
    int dogyears = 12;

    if (dogyears != 7){
      throw new Exception("Dog years should be 7");
    }

    if(age == null){
      throw new NullThrownError();
    }

    print(age * dogyears);
  }
  on NoSuchMethodError{
    print("What even was that!");
  }
  on NullThrownError {
    print("You can't multiply with nothing!");
  }
  catch(e){
    print("There was an error: ${e.toString()}");
  }
  finally{
    print("Completed Execution");
  }

}

/*
This is my first multiline comment
*/

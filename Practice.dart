// 1 the classic "Hello, World!" program.
import 'dart:math';

void maindart() {
  print('Hello, World!');
}

// 2  Variables.
void mainvariable() {
  int a = 10;
  print(a);
}

// 3  Constants
void mainconstant() {
  const int b = 20;
  print(b);
}

// 4  Data Types
void mainDataTypes() {
  int a = 10;
  double b = 20.5;
  String c = 'Hello';
  bool d = true;
  print(a);
  print(b);
  print(c);
  print(d);
}

// 5  Operators
void mainOperators() {
  int a = 10;
  int b = 20;
  int c = a + b;
  print(c);
  int d = a - b;
  print(d);
  int e = a * b;
  print(e);
  double f = b / a;
  print(f);
  int g = a % b;
  print(g);
}

// 6  Control Flow Statements
void mainControlFlowStatements() {
  int a = 10;
  if (a > 5) {
    print('a is greater than 5');
  } else {
    print('a is not greater than 5');
  }

  for (int i = 0; i < 5; i++) {
    print('Iteration: $i');
  }

  int j = 0;
  while (j < 5) {
    print('While loop iteration: $j');
    j++;
  }
}

// 7  Functions
void mainFunctions() {
  greet('Alice');
  greet('Bob');
  greet('Charlie');
}

void greet(String name) {
  print('Hello, $name!');
}

// 8  Classes and Objects
class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void introduce() {
    print('Hi, my name is $name and I am $age years old.');
  }
}

void mainClass() {
  Person person = Person('Alice', 30);
  person.introduce();
}

// 9  Inheritance
class Animal {
  void speak() {
    print('Animal speaks');
  }

  void eat() {
    print('Animal is eating');
  }
}

class Dog extends Animal {
  void bark() {
    print('Dog barks');
  }
}

class Cat extends Animal {
  void meow() {
    print('Cat meows');
  }
}

void mainInheritance() {
  Dog dog = Dog();
  dog.speak();
  dog.bark();
  Cat cat = Cat();
  cat.speak();
  cat.meow();
}

// 10  Polymorphism
class Shape {
  void draw() {
    print('Drawing a shape');
  }
}

class Circle extends Shape {
  void draw() {
    print('Drawing a circle');
  }
}

class Rectangle extends Shape {
  void draw() {
    print('Drawing a rectangle');
  }
}

void mainPolymorphism() {
  Shape shape = Shape();
  shape.draw();
  Circle circle = Circle();
  circle.draw();
  Rectangle rectangle = Rectangle();
  rectangle.draw();
}

// 11  Encapsulation
class BankAccount {
  int _balance;
  BankAccount(this._balance);

  int getBalance() {
    return _balance;
  }

  void deposit(int amount) {
    _balance += amount;
  }

  void withdraw(int amount) {
    if (amount <= _balance) {
      _balance -= amount;
    } else {
      print('Insufficient funds');
    }
  }
}

void mainEncapsulation() {
  BankAccount account = BankAccount(1000);
  print(account.getBalance());
  account.deposit(500);
  print(account.getBalance());
  account.withdraw(200);
  print(account.getBalance());
  account.withdraw(1500);
}

// 12  Abstraction
abstract class Vehicle {
  void start();
  void stop();
}

class Car extends Vehicle {
  void start() {
    print('Car started');
  }

  void stop() {
    print('Car stopped');
  }
}

class Bicycle extends Vehicle {
  void start() {
    print('Bicycle started');
  }

  void stop() {
    print('Bicycle stopped');
  }
}

void mainAbstraction() {
  Vehicle car = Car();
  car.start();
  car.stop();

  Vehicle bicycle = Bicycle();
  bicycle.start();
  bicycle.stop();
}

// 13  Exception Handling
void mainExceptionHandling() {
  try {
    int result = divide(10, 0);
    print('Result: $result');
  } catch (e) {
    print('Error: $e');
  }
}

int divide(int a, int b) {
  if (b == 0) {
    throw Exception('Division by zero');
  }
  return a ~/ b;
}

// 14  Collections
void mainCollections() {
  List<int> numbers = [1, 2, 3, 4, 5];
  for (int number in numbers) {
    print(number);
  }
  Set<String> fruits = {'apple', 'banana', 'orange'};
  for (String fruit in fruits) {
    print(fruit);
  }
  Map<String, int> scores = {'Alice': 85, 'Bob': 90, 'Charlie': 95};
  for (String name in scores.keys) {
    print('$name: ${scores[name]}');
  }
}

// 15  Asynchronous Programming
// import'dart:async';
void mainAsyncProgramming() {
  print('Start');
  fetchData()
      .then((data) {
        print('Data: $data');
      })
      .catchError((error) {
        print('Error: $error');
      });
  print('End');
}

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Fetched Data';
}

// 16  Generics
class Stack<T> {
  List<T> _items = [];
  void push(T item) {
    _items.add(item);
  }

  T pop() {
    return _items.removeLast();
  }
}

void mainGenerics() {
  Stack<int> intStack = Stack<int>();
  intStack.push(1);
  intStack.push(2);
  print(intStack.pop()); // Output: 2
  Stack<String> stringStack = Stack<String>();
  stringStack.push('Hello');
  stringStack.push('World');
  print(stringStack.pop()); // Output: World
}
// 17  Mixins
// Removed duplicate Animal class definition

mixin Flyable {
  void fly() {
    print('Animal is flying');
  }
}

class Bird extends Animal with Flyable {
  void chirp() {
    print('Bird is chirping');
  }
}

void mainMixins() {
  Bird bird = Bird();
  bird.eat();
  bird.fly();
  bird.chirp();
}

// 18  Type Aliases
typedef IntList = List<int>;
void mainTypeAliases() {
  IntList numbers = [1, 2, 3, 4, 5];
  for (int number in numbers) {
    print(number);
  }
}

// 19  Null Safety
void mainNullSafety() {
  int? a = null;
  print(a);
}

// 20  Type Checks
void mainTypeChecks() {
  () {
    dynamic value = 'Hello';
    if (value is String) {
      print('Value is a String: $value');
    } else {
      print('Value is not a String');
    }
  }();
}

// 21  Extension Methods
extension StringExtensions on String {
  String capitalize() {
    return this[0].toUpperCase() + substring(1);
  }
}

void mainextensionMethods() {
  String name = 'alice';
  print(name.capitalize()); // Output: Alice
}

// 22  Type Coercion
void printElement;
cion() {
  dynamic value = '123';
  int number = value as int; // This will throw an error
  print(number);
}

void mainTypeCo;
er() {
  () {
    dynamic value = '123';
    int number = int.parse(value); // Correct way to convert String to int
    print(number);
  };
}

// Isolates
void mainIsolates() {
  print('Main isolate started');
  // Simulating an isolate
  Future(() {
    print('Isolate running');
    // Simulate some work
    Future.delayed(Duration(seconds: 2), () {
      print('Isolate finished');
    });
  });
  print('Main isolate finished');
}

//  20  Dart Libraries
// import 'dart:math';
void mainDartLibraries() {
  double randomValue = Random().nextDouble();
  print('Random value: $randomValue');
}

// 21  Dart Packages
void mainDartPackages() async {
  // This code requires the 'http' package.
  // To run this, you need to add 'http: ^0.13.3' (or a similar version) to your pubspec.yaml file
  // and run 'flutter pub get' or 'dart pub get'.
  // final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
  // if (response.statusCode == 200) {
  //   print(response.body);
  // } else {
  //   print('Failed to load data: ${response.statusCode}');
  // }
}
// 22 Dart Streams
// import 'dart:async';
void mainDartStreams() {
  Stream<int> stream = Stream.fromIterable([1, 2, 3, 4, 5]);
  stream.listen(
    (data) {
      print('Stream data: $data');
    },
    onDone: () {
      print('Stream is done');
    },
    onError: (error) {
      print('Stream error: $error');
    },
  );
}

// 23 Dart Futures
// import 'dart:async';
void mainDart;
Futures() {
  Future<int> future = Future.delayed(Duration(seconds: 2), () => 42);
  future
      .then((value) {
        print('Future value: $value');
      })
      .catchError((error) {
        print('Future error: $error');
      });
}

// 24 Dart Async/Await
// import 'dart:async';
void mainDartAsync;
Await() async {
  print('Start'); // This line was already present
  int result =
      Await(); // Changed await fetchData(); // Changed Await() to await fetchData()
  print(' fetchData()');
  print('Result: $result');
  print('Data: $result');
  print('End');
}

Future<int> fetchDatas() async {
  print('Fetching data...');
  await Future.delayed(Duration(seconds: 2));
  return 42;
}

// 25 Dart Libraries
// import 'dart:math';
void mainDarts;Libraries() {
  double randomValue = Random().nextDouble();
  print('Random value: $randomValue');
}

// Example of using Dart libraries
// import 'dart:math';
// void main() {
//   double randomValue = Random().nextDouble();
//   print('Random value: $randomValue');
// }

// Main function to run all examples
// import 'dart:math';
// void main()
// {
//   maindart();
//   mainvariable();
//   mainconstant();
//   main
// DataTypes();
//   mainOperators();
//   mainControlFlowStatements();
//   mainFunctions();
//   mainClass();
//   mainInheritance();
//   mainPolymorphism();
//   mainEncapsulation();
//   mainAbstraction
//   mainExceptionHandling();
//   mainCollections();
//   mainAsyncProgramming();
//   mainGenerics();
//   mainMixins();
//   mainTypeAliases();
//   main
// NullSafety();
//   mainTypeChecks();
//   mainextensionMethods();
//   mainTypeCo;
// er
//   mainIsolates();
//   mainDartLibraries();
//   mainDartStreams();
//   mainDartFutures();
//   mainDartAsyncAwait();
//
//   mainDartPackages();
// }

// END OF CODE
```dart
class MyClass {
  int? _myVariable;

  int get myVariable => _myVariable ?? 0; // Default value if null

  set myVariable(int value) {
    _myVariable = value;
  }

  //Added a method to explicitly check the value.
  int checkMyVariable() {
    return _myVariable ?? 0;
  }
}

void main() {
  MyClass obj = MyClass();
  print(obj.myVariable); // Prints 0
  obj.myVariable = 10;
  print(obj.myVariable); // Prints 10
  print(obj.checkMyVariable()); //Prints 10
}
```
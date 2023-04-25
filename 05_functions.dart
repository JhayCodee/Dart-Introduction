void main() {

  print(greetEveryone());
  print(greetEveryone2());
  print('suma ${addTwoNumbers(10, 20)}');
  print(greetPerson(name: 'Luis'));
  
}

String greetEveryone() {
  return 'Hello Everyone';
}

String greetEveryone2() => 'Hello Everyone';

// params obligatorios
int addTwoNumbers (int a, int b) => a + b;

// si esta dentro de [] el parametro es opcional
int addTwoNumbersOptional (int a, [int b = 0]) {
  
  // b = b ?? 0; // si b tiene valor, lo deja, si no 0
  // otra forma b ??= 0
  
  
  return a + b;
}

// opcionales {}
// si se agrega un required, ya no es opcional el campo
String greetPerson({ required String name, String? message = 'Hola,'}) {
  
  return '$message $name';
}
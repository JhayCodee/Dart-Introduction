void main() {
  
  final numbers = [1,2,3,4,5,6,6,7,8,8,9];
  
  print('Lista original: $numbers');
  print('Length: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Reverse: ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('iterable $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');

  // set no admite valores duplicados
  print('set: ${reversedNumbers.toSet()}');
  
  final numbersGreaterThan5 = numbers.where( (num){
    return num > 5; 
  });
  
  print('iterable > 5: $numbersGreaterThan5');
  print('iterable to set > 5: ${ numbersGreaterThan5.toSet() }');
  
  
  
  
}
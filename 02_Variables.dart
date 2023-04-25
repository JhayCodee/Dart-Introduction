void main() {

  // final: no puede cambia su valor
  final String pokemon = 'Ditto';
  final int hp = 100;
  
  // null safety 
  bool? isAlive;
  
  // listas
  final List<String> abilities = ['impostor'];
  final sprites = ['ditto/front.png', 'ditto/back.png'];
  
  
  // Dynamic puede ser cualquier tipo de dato
  // Dynamic = null default
  dynamic errorMessage = 'Hola';
  errorMessage = () => [1,2,3,4];
  errorMessage = () => {1,2,3,4};
  errorMessage = () => true;
  errorMessage += 1;
  
  
  // string multilinea
  print("""
  
    $pokemon
    $hp
    $isAlive
    $abilities
    $sprites
    
    $errorMessage
  """);
  
  
}
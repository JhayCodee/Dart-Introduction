void main() {
  
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Satrk',
    'power': 'Money',
    'isAlive': true
  };
  
  final ironman = Hero (
		isAlive: rawJson['isAlive'] ?? false,
    power: 'Money',
    name: 'Tonny Stark'
  );
  
  final ironman2 = Hero.fromJson(rawJson);
  
  print(ironman);
  print(ironman2);
  

}

class Hero {
  
  String name;
  String power;
  bool isAlive;
  
  Hero ({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  // name constructor
  Hero.fromJson (Map<String, dynamic> json) 
    : name = json['name'] ?? 'no name found',
  	  power = json['power'] ?? 'no power found',
  		isAlive = json['isAlive'] ?? 'dead';  
  
  @override
  String toString() {
    return '$name, $power ${isAlive ? 'Yes' : 'No'}';
  }
}

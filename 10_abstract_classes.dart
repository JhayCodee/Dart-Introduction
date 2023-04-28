void main() {
  
  final windPlant = WindPlant(initialEnergy: 100);
  print(windPlant);
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {

  double energyLeft;
  PlantType type; // nuclear, wind, water
  
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  
  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {

  WindPlant({ required double initialEnergy })
    : super ( energyLeft: initialEnergy, type: PlantType.wind);
  
  @override
  void consumeEnergy (double amount) {
    energyLeft -= amount;
  }
}
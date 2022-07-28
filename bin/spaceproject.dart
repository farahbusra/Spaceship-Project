import 'dart:math';

abstract class SpaceShip {
  int health = 100;
  int firePower = 10;

  //Methods
  //hit
  //isDestroyed

  void hit() {
    int newHealth = health - firePower;
    print("Current health is $newHealth");
  }

  void isDestroyed() { //bool 
    if (health == true){
    print("The ship is destroyed");
    } 
    else{
    print("The ship has taken damage!");
} } 
  
  
}

class BattleField {
  void startBattle(SpaceShip sp1, SpaceShip sp2) {
    //Randomly a space ship is selected to hit first
    //Spaceships hit each other
    //until one of them is destroyed

    var selectedShip = Random().nextBool();
    
    if(selectedShip){
      print("Ship 1");
    }else{
      print("Ship 2");
    }
    }
  }

class ArmoredSpaceShip {
  //randomly absorbs hit
  //percentage to double


  double maxArmorPower = 0.40;
  Random randAbsorb = new Random();
  double absorb = randAbsorb.nextDouble(0.5);
}

class HighSpeedSpaceShip {
  //whether dodges hit or not
  //dodge => true, not dodged => false
  //bool dodging; 


  final randBool = Random();
  final dodging = randBool.nextBool();

  if (dodging == true){
    print('The bullet is dodged'); 
  } else {
    print('You are hit!');
  }
}

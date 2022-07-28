import 'dart:math';

abstract class SpaceShip {
  int health = 100;
  int firePower = 10;

  //Methods
  //hit
  //isDestroyed

  void hit(int firePower);

  bool isDestroyed() { //bool 
    if (health <= 0 ){
      return true;
    } else {
      return false;
    } 
    }

    SpaceShip(this.health, this.firePower); 
  
  
}

class BattleField {
  void startBattle(SpaceShip sp1, SpaceShip sp2) {
    //Randomly a space ship is selected to hit first
    //Spaceships hit each other
    //until one of them is destroyed

    final selectedShip = Random().nextBool();
    
    if(selectedShip){
      print("Ship 1");
    }else{
      print("Ship 2");
    }

    //take turns to hit 
    //get from hit function
    }
  }

class ArmoredSpaceShip extends SpaceShip {
  
  //randomly absorbs hit
  double absorbHit = Random().nextDouble() * 0.4;

  @override
    void hit(int firePower){
      double damage;
      damage = firePower - absorbHit;
      health = health - damage.toInt();
    }

    @override
    void isDestroyed(){
      print('Armored Ship is destroyed! /n Game over!');
    }

    ArmoredSpaceShip(health, firePower): super(health, firePower);

}

class HighSpeedSpaceShip extends SpaceShip {
  //whether dodges hit or not
  //dodge => true, not dodged => false

  @override
  void hit(int firePower) {
    bool dodging = Random().nextBool();
  }

  if(dodging == false) {
    health -= firePower;
    print('You are hit!'); 
  } else {
    print('The bullet is dodged');
  }

  @override
    void isDestroyed(){
      print('High Speed Ship is destroyed! /n Game over!');
    }
        HighSpeedSpaceShip(health, firePower): super(health, firePower);
}

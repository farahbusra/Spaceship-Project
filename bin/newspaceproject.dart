import 'dart:math';

class BattleField {
  void startBattle(SpaceShip sp1, SpaceShip sp2) {
    //Randomly a space ship is selected to hit first
    //Spaceships hit each other
    //until one of them is destroyed

    var selectedShip = Random().nextBool();
    if( selectedShip){
      print("Ship 1");
    }else{
      print("Ship 2");
    }
    }
  }

// This is encapsulation because all the properties and methods
// are encapsulated inside the class
class Fighter {
  String name = "";
  String power = "";

  void intro() {
    print("I am " + name + " and my power is " + power + ".");
  }

  void attack() {
    print(name + " damaged the enemy by 50HP.");
  }

  void move() {
    print(name + " is walking...");
  }

  // This is abstraction because it executes numerous functions
  // under the mask of one function
  void showCase() {
    print("This is what this fighter does:");
    intro();
    attack();
    move();
  }
}

// This is inheritance because Knight and Mage classes inherit methods and properties
// from the Fighter class

// This is also polymorphism because they also have their unique properties
// while still sharing properties with the parent class
class Knight extends Fighter {
  @override
  String name;
  @override
  String power = "Swordsmanship";
  Knight(String this.name);
}

class Mage extends Fighter {
  @override
  String name;
  @override
  String power = "Fire";
  Mage(String this.name);
}

void main() {
  Knight k1 = new Knight("Riki");
  k1.showCase();
  print("\n");
  Mage m1 = new Mage("Gab");
  m1.showCase();
}

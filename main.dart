class BusCard {
  String _owner = '';
  int _balance = 0;

  // Constructor
  BusCard(String owner, int balance) {
    _owner = owner;
    _balance = balance;
  }

  // Getter for owner
  String get owner {
    return _owner;
  }

  // TODO 1: Getter for balance
  int get balance {
    return _balance;
  }

  // Setter for owner
  set owner(String newName) {
    if (newName.length < 3) {
      print('Error: name too short');
    } else {
      _owner = newName;
    }
  }

  // Show card information
  void showInfo() {
    print('Owner: $_owner | Balance: $_balance RWF');
  }

  // TODO 2: Top up
  void topUp(int amount) {
    if (amount >= 500 && amount <= 50000) {
      _balance = _balance + amount;
      print('Topped up $amount RWF');
    } else {
      print('Error: top-up must be 500 to 50000 RWF');
    }
  }

  // TODO 3: Pay
  void pay(int fare) {
    if (fare > _balance) {
      print('Card declined');
    } else {
      _balance = _balance - fare;
      print('Paid $fare RWF');
    }
  }
}

class StudentCard extends BusCard {
  int _discount = 0;

  // Constructor
  StudentCard(String owner, int balance, int discount) : super(owner, balance) {
    _discount = discount;
  }

  // Override showInfo
  @override
  void showInfo() {
    super.showInfo();
    print('Student card: $_discount% off');
  }

  // TODO 4: Override pay method
  @override
  void pay(int fare) {
    int off = fare * _discount ~/ 100;

    print('Student discount: $off RWF');

    super.pay(fare - off);
  }
}

// Main function
// Main function - Part 2 testing

void main() {
  // My numbers: D = 47, L = 7
  // Starting balance = 1470 RWF
  // Bus fare = 247 RWF
  // Discount = 17%

  // Create a BusCard
  BusCard card = BusCard('Ama', 1470);

  // Example: test the owner setter
  card.owner = 'Al';
  card.showInfo();

  // TODO 5: Change owner to my full name
  card.owner = 'Gentil IRAKOZE SHEMA';
  card.showInfo();

  // TODO 6: Test top-up
  card.topUp(100);
  card.topUp(2000);

  // TODO 7: Pay bus fare two times
  card.pay(247);
  card.pay(247);
  card.showInfo();

  // TODO 8: Create a StudentCard
  StudentCard student = StudentCard('Gentil IRAKOZE SHEMA', 1470, 17);

  // TODO 9: Pay bus fare using student card
  student.pay(247);
  student.showInfo();
}

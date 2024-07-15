// abstract class Vehicle {
//   void refuel();
//   void move();
// }

// class ElectricCar extends Vehicle {
//   @override
//   void move() {
//     print('moving...');
//   }

//   @override
//   void refuel() {
//     print('charging the battery...');
//   }
// }

// class PetrolCar extends Vehicle {
//   @override
//   void move() {
//     print('moving...');
//   }

//   @override
//   void refuel() {
//     print('refueling the petrol...');
//   }

//   void serviceVehicle(Vehicle vehicle) {
//     vehicle.refuel();
//     //some more servicing activites
//   }
// }

// this violates lsp
abstract class Vehicle {
  void move();
}

//we abstracted fuel and electric vehicles
abstract class FuelVehicle extends Vehicle {
  void refuel();
}

abstract class ElectricVehicle extends Vehicle {
  void charge();
}

class ElectricCar extends ElectricVehicle {
  @override
  void charge() {
    print('charging the battery...');
  }

  @override
  void move() {
    print('moving...');
  }
}

class PetrolCar extends FuelVehicle {
  @override
  void move() {
    print('moving...');
  }

  @override
  void refuel() {
    print('charging the fuel...');
  }

  void serviceFuelVehicle(FuelVehicle vehicle) {
    vehicle.refuel();
  }

  void serviceElectricVehicle(ElectricVehicle vehicle) {
    vehicle.charge();
  }
}

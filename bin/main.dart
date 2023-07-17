import 'model/bmw.dart';
import 'model/car.dart';
import 'dart:io';

import 'model/extensions/extension.dart';
import 'model/honda.dart';
import 'model/kia.dart';

void main() {
  handleMain();
}

void handleMain() {
  try {
    performMain();
  } catch (e) {
    print('Something went wrong');
  }
}

void performMain(){
  List<Car> cars = [];

// Display options to the user
  print('1. Display Cars');
  print('2. Create a Car');
  print('3. Update a Car');
  print('4. Search for a Car');
  print('5. Exit');

  int option = 0;
  while (option != 5) {
    print('\nEnter your option: ');
    // String str = 'name';
    // Car car;
    // car = BMW('name', 'description'); // polymorphism
    // car = Honda('name', 'description'); // polymorphism
    // car = Kia('name', 'description'); // polymorphism
    // print(Car.welcome);
    // A : 64 >> 1000000, null : 8, '' : 10
    // option = int.parse(stdin.readLineSync() ?? '0');
    // String name = stdin.readLineSync().onNull();
    int? a;
    a.onNull();
    switch (option) {
      case 1:
        print('\nDisplaying Cars:');
        for (var car in cars) {
          car.display();
        }
        break;
      case 2:
        print('\nCreating a Car:');
        print('Enter car name: ');
        String? name = stdin.readLineSync();
        print('Enter car description: ');
        String? description = stdin.readLineSync();
        // Create a new car based on user input
        Car newCar = BMW(name!, description!); // Example: Create a BMW car
        cars.add(newCar);
        break;
      case 3:
        print('\nUpdating a Car:');
        print('Enter car name to update: ');
        String? carName = stdin.readLineSync();
        // Find the car to update
        Car? carToUpdate = cars.firstWhere((car) => car.name == carName, orElse: () => BMW('name', 'description'));
        if (carToUpdate != null) {
          print('Enter new car name: ');
          String? newName = stdin.readLineSync();
          print('Enter new car description: ');
          String? newDescription = stdin.readLineSync();
          carToUpdate.update(newName!, newDescription!);
          print('Car updated successfully!');
        } else {
          print('Car not found!');
        }
        break;
      case 4:
        print('\nSearching for a Car:');
        print('Enter search query: ');
        String? query = stdin.readLineSync();
        List<Car> searchResults = cars.where((car) => car.search(query!)).toList();
        if (searchResults.isNotEmpty) {
          print('Search Results:');
          for (var car in searchResults) {
            car.display();
          }
        } else {
          print('No cars found matching the search query.');
        }
        break;
      case 5:
        print('\nExiting...');
        break;
      default:
        print('Invalid option. Please try again.');
        break;
    }
  }
}
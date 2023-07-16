abstract class Car {
  String name;
  String description;
  // Add more properties specific to a car

  Car(this.name, this.description);

  void display() {
    print('Name: $name');
    print('Description: $description');
    // Display more properties specific to a car
  }

  void update(String newName, String newDescription) {
    name = newName;
    description = newDescription;
    // Update more properties specific to a car
  }

  bool search(String query) {
    return name.toLowerCase().contains(query.toLowerCase()) ||
        description.toLowerCase().contains(query.toLowerCase());
    // Search for more properties specific to a car
  }
}

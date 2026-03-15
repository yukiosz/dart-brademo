import 'dart:io';

class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);
}

void main() {
  List<House> houses = [];

  for (int i = 1; i <= 3; i++) {
    print("digite o id da casa $i: ");
    int id = int.parse(stdin.readLineSync()!);
    print("digite o nome da casa $i: ");
    String name = stdin.readLineSync()!;
    print("digite o preço da casa $i: ");
    double price = double.parse(stdin.readLineSync()!);

    House house = House(id, name, price);

    houses.add(house);
  }

  houses[0]..name = "${houses[0].name} (Cadastrada)";
  houses[1]..name = "${houses[1].name} (Cadastrada)";
  houses[2]..name = "${houses[2].name} (Cadastrada)";

  for (var house in houses) {
    print("${house.id} - ${house.name} - ${house.price}");
  }
}

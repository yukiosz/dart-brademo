class Laptop {
  int id;
  String nome;
  int ram;
  int clockCpu;

  Laptop(this.id, this.nome, this.ram, this.clockCpu);

  void mostrarDetalhes() {
    print("id: $id");
    print("nome: $nome");
    print("ram: ${ram}GB");
    print("clockCpu: ${clockCpu}");
    print("-------");
  }
}

void main() {
  Laptop laptop1 = Laptop(1, "laptop 1", 8, 5);
  Laptop laptop2 = Laptop(1, "laptop 2", 4, 5);
  Laptop laptop3 = Laptop(1, "laptop 3", 16, 5);

  laptop1.mostrarDetalhes();
  laptop2.mostrarDetalhes();
  laptop3.mostrarDetalhes();
}

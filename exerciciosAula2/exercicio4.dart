class Laptop {
  int id;
  String nome;
  int ram;
  int clockCpu;

  Laptop.build(this.id, this.nome, this.ram, this.clockCpu);

  void mostrarDetalhes() {
    print("id: $id");
    print("nome: $nome");
    print("ram: ${ram}GB");
    print("clockCpu: ${clockCpu}");
    print("-------");
  }
}

class LaptopInternet extends Laptop {
  LaptopInternet(id, nome, ram, clockCpu)
    : super.build(id, nome, ram, clockCpu);

  void mostrarDetalhes() {
    print("Notebook para navegação em Internet");
    print("id: $id");
    print("nome: $nome");
    print("ram: ${ram}GB");
    print("clockCpu: ${clockCpu}");
    print("-------");
  }
}

class LaptopEscritorio extends Laptop {
  LaptopEscritorio(id, nome, ram, clockCpu)
    : super.build(id, nome, ram, clockCpu);

  void mostrarDetalhes() {
    print("Notebook para Escritório");
    print("id: $id");
    print("nome: $nome");
    print("ram: ${ram}GB");
    print("clockCpu: ${clockCpu}");
    print("-------");
  }
}

class LaptopProgramacao extends Laptop {
  LaptopProgramacao(id, nome, ram, clockCpu)
    : super.build(id, nome, ram, clockCpu);

  void mostrarDetalhes() {
    print("Notebook para Programação");
    print("id: $id");
    print("nome: $nome");
    print("ram: ${ram}GB");
    print("clockCpu: ${clockCpu}");
    print("-------");
  }
}

void main() {
  Laptop laptop1 = LaptopEscritorio(1, "laptop 1", 8, 5);
  Laptop laptop2 = LaptopProgramacao(1, "laptop 2", 4, 5);
  Laptop laptop3 = LaptopInternet(1, "laptop 3", 16, 5);

  laptop1.mostrarDetalhes();
  laptop2.mostrarDetalhes();
  laptop3.mostrarDetalhes();
}

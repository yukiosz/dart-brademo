void main() {
  cadastrarFuncionario(nome: "Ana", cargo: "Analista");
  cadastrarFuncionario(nome: "Carlos");
}

void cadastrarFuncionario({required String nome, String? cargo}) {
  if (cargo != null) {
    print("Bem vindo, " + nome + ". Seu cargo é: " + cargo);
  } else {
    print("Bem vindo, " + nome);
  }
}

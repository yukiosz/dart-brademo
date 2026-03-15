void main() {
  var equipamento = "Impressora 3D";
  String local = "Lab de Prototipos";
  dynamic patrimonio = 12345;

  //checa se o patrimonio ainda é inteiro assim como quando foi inicializado
  print(patrimonio is int);
  patrimonio = '12345-A';

  print(equipamento is String);

  //tipo de local nao deve ser alterado por nao ser dynamic
  print(local is String);

  //agora se tornou String após a conversão
  print(patrimonio is String);
}

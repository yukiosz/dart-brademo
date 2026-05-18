import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  final box = await Hive.openBox('ex3');

  runApp(App(box: box));
}

class TarefaProvider extends ChangeNotifier {
  TarefaProvider(this.box) {
    final dados = box.get('lista', defaultValue: <String>[]);
    lista = List<String>.from(dados);
  }

  final Box box;
  List<String> lista = [];

  void salvar() {
    box.put('lista', lista);
    notifyListeners();
  }

  void add(String texto) {
    if (texto.trim().isEmpty) return;
    lista.add(texto.trim());
    salvar();
  }

  void remover(int i) {
    lista.removeAt(i);
    salvar();
  }
}

class App extends StatelessWidget {
  const App({super.key, required this.box});

  final Box box;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TarefaProvider(box),
      child: const MaterialApp(debugShowCheckedModeBanner: false, home: Tela()),
    );
  }
}

class Tela extends StatefulWidget {
  const Tela({super.key});

  @override
  State<Tela> createState() => _TelaState();
}

class _TelaState extends State<Tela> {
  final ctrl = TextEditingController();

  @override
  void dispose() {
    ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Consumer<TarefaProvider>(
          builder: (context, prov, _) {
            return Column(
              children: [
                TextField(
                  controller: ctrl,
                  decoration: const InputDecoration(labelText: 'tarefa'),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    prov.add(ctrl.text);
                    ctrl.clear();
                  },
                  child: const Text('adicionar'),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: ListView.builder(
                    itemCount: prov.lista.length,
                    itemBuilder: (context, i) {
                      return ListTile(
                        title: Text(prov.lista[i]),
                        trailing: IconButton(
                          onPressed: () => prov.remover(i),
                          icon: const Icon(Icons.delete),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const App());
}

class Contador extends ChangeNotifier {
  int valor = 0;

  void somar() {
    valor++;
    notifyListeners();
  }

  void subtrair() {
    valor--;
    notifyListeners();
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Contador(),
      child: const MaterialApp(debugShowCheckedModeBanner: false, home: Tela()),
    );
  }
}

class Tela extends StatelessWidget {
  const Tela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<Contador>(
          builder: (context, cont, _) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${cont.valor}', style: const TextStyle(fontSize: 32)),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: cont.somar,
                  child: const Text('incrementar'),
                ),
                ElevatedButton(
                  onPressed: cont.subtrair,
                  child: const Text('decrementar'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

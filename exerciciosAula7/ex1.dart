import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  final box = await Hive.openBox('ex1');

  runApp(App(box: box));
}

class App extends StatelessWidget {
  const App({super.key, required this.box});

  final Box box;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Tela(box: box));
  }
}

class Tela extends StatefulWidget {
  const Tela({super.key, required this.box});

  final Box box;

  @override
  State<Tela> createState() => _TelaState();
}

class _TelaState extends State<Tela> {
  late bool modo;

  @override
  void initState() {
    super.initState();
    modo = widget.box.get('modo', defaultValue: false);
  }

  void trocar() {
    setState(() {
      modo = !modo;
      widget.box.put('modo', modo);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: modo ? Colors.green : Colors.blue,
      body: Center(
        child: ElevatedButton(
          onPressed: trocar,
          child: Text(modo ? 'modo relax' : 'modo focado'),
        ),
      ),
    );
  }
}

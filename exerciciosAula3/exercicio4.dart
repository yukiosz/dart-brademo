import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MainApp()
    )
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('Insert Image Example'),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 200,
            child: FittedBox(
              fit: BoxFit.cover,
              clipBehavior: Clip.hardEdge,
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/PNG_transparency_demonstration_1.png/280px-PNG_transparency_demonstration_1.png',
              ),
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            height: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Camponotus_flavomarginatus_ant.jpg/320px-Camponotus_flavomarginatus_ant.jpg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
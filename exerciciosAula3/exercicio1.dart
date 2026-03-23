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
        backgroundColor: Colors.green,
        title: const Text(
          'Flutter is Fun!',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 80, left: 120),
        width: 80,
        height: 80,
        color: Colors.deepOrange,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hi Mom ',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            Icon(Icons.face, color: Colors.amber, size: 16),
          ],
        ),
      ),
    );
  }
}

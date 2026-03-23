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
        title: const Text('Stack & Positioned Widget'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 20,
              child: Container(
                width: 160,
                height: 160,
                color: Colors.green,
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(6),
                    child: Text(
                      'Green',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 160,
                height: 160,
                color: Colors.red,
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(6),
                    child: Text(
                      'Red',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 80,
              left: 80,
              child: Container(
                width: 160,
                height: 160,
                color: Colors.purple,
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(6),
                    child: Text(
                      'Purple',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
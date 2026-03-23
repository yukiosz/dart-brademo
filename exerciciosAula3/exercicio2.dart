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
      body: Center(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButtonItem(Icons.call, 'CALL'),
              _buildButtonItem(Icons.near_me, 'ROUTE'),
              _buildButtonItem(Icons.share, 'SHARE'),
            ],
          ),
        ),
      ),
    );
  }

  
  Widget _buildButtonItem(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: const Color(0xFF6A4FC8), size: 40),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFF6A4FC8),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

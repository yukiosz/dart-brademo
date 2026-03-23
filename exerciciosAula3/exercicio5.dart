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
      body: ListView(
        children: [
          Image.network(
            'https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630',
            width: double.infinity,
            height: 240,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row 1 - título e estrelas
                Row(
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'braganca paulista',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'sp, br',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.star, color: Colors.red),
                    const SizedBox(width: 4),
                    const Text('9999'),
                  ],
                ),
                const SizedBox(height: 16),

                // Row 2 - botões
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildActionButton(Icons.call, 'LIGAR'),
                    _buildActionButton(Icons.near_me, 'ROTA'),
                    _buildActionButton(Icons.share, 'COMPARTILHAR'),
                  ],
                ),

                const SizedBox(height: 16),

                // Texto
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sit amet erat id massa vulputate ultrices. Aliquam augue nisi, gravida pellentesque facilisis in, efficitur sit amet purus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis laoreet neque, eget venenatis tortor aliquam et. Morbi ut enim consectetur, semper nisi sit amet, interdum ante. Vestibulum facilisis quam enim, at iaculis sem vestibulum eu. Proin ipsum magna, pulvinar ac erat eu, semper volutpat nisi. Sed mattis vel ligula vitae varius. Mauris ultricies tincidunt sapien, eget ornare tortor accumsan sit amet. Maecenas lacus nunc, eleifend vitae consequat quis, aliquam non eros. Integer quis nulla viverra, tristique sem sed, facilisis lorem. Duis euismod sapien ut porta molestie. In vestibulum consectetur sem ut rhoncus.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.black),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
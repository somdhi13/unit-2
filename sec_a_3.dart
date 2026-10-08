import 'package:flutter/material.dart';

class SecA3Screen extends StatelessWidget {
  const SecA3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Section A - Q3: Scaffold & FAB'),
      ),
      body: const Center(
        child: Text(
          'This is the body text inside the Scaffold.',
          style: TextStyle(fontSize: 18),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Floating Action Button Pressed!')),
          );
        },
        child: const Icon(Icons.thumb_up),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SecA1Screen extends StatelessWidget {
  const SecA1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section A - Q1: Personal Info')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: John Doe', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            Text('College Name: ABC Institute of Technology', style: TextStyle(fontSize: 18)),
            SizedBox(height: 12),
            Text('Course: Bachelor of Computer Applications (BCA)', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

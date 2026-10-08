import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade50,
        border: const Border(left: BorderSide(color: Colors.deepPurple, width: 4)),
      ),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple),
      ),
    );
  }
}

class SecA10Screen extends StatelessWidget {
  const SecA10Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section A - Q10: Custom SectionTitle')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          SectionTitle(title: 'Screen 1 Header'),
          SizedBox(height: 10),
          Text('Content corresponding to the first section header reused.'),
          SizedBox(height: 30),
          SectionTitle(title: 'Screen 2 Header'),
          SizedBox(height: 10),
          Text('Content corresponding to the second section header reused.'),
        ],
      ),
    );
  }
}

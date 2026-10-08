import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo, foregroundColor: Colors.white),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  const CustomCard({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(subtitle, style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}

class SecC2Screen extends StatelessWidget {
  const SecC2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section C - Q2: Custom Widget Library')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CustomCard(title: 'Library Card 1', subtitle: 'Demonstrating custom reusable card widget.'),
            const SizedBox(height: 16),
            const CustomCard(title: 'Library Card 2', subtitle: 'Another instance of custom card widget.'),
            const SizedBox(height: 24),
            CustomButton(text: 'Click Custom Button', onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Custom button clicked!')));
            }),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SecA4Screen extends StatelessWidget {
  const SecA4Screen({super.key});

  final List<String> fruits = const [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Elderberry',
    'Fig',
    'Grape',
    'Honeydew',
    'Kiwi',
    'Lemon',
    'Mango',
    'Nectarine'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section A - Q4: ListView Fruits')),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.primaries[index % Colors.primaries.length],
              child: Text(fruits[index][0]),
            ),
            title: Text(fruits[index], style: const TextStyle(fontSize: 18)),
            subtitle: Text('Fruit item number ${index + 1}'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          );
        },
      ),
    );
  }
}

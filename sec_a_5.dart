import 'package:flutter/material.dart';

class SecA5Screen extends StatelessWidget {
  const SecA5Screen({super.key});

  final List<Color> colors = const [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.teal,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section A - Q5: GridView Coloured Boxes')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: List.generate(6, (index) {
            return Container(
              decoration: BoxDecoration(
                color: colors[index],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  'Box ${index + 1}',
                  style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

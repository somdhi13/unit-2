import 'package:flutter/material.dart';

class SecB9Screen extends StatelessWidget {
  const SecB9Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section B - Q9: Adaptive Form')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isWide = constraints.maxWidth > 600;
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                isWide
                    ? Row(
                        children: const [
                          Expanded(child: TextField(decoration: InputDecoration(labelText: 'First Name', border: OutlineInputBorder()))),
                          SizedBox(width: 16),
                          Expanded(child: TextField(decoration: InputDecoration(labelText: 'Last Name', border: OutlineInputBorder()))),
                        ],
                      )
                    : Column(
                        children: const [
                          TextField(decoration: InputDecoration(labelText: 'First Name', border: OutlineInputBorder())),
                          SizedBox(height: 16),
                          TextField(decoration: InputDecoration(labelText: 'Last Name', border: OutlineInputBorder())),
                        ],
                      ),
                const SizedBox(height: 16),
                const TextField(decoration: InputDecoration(labelText: 'Email Address', border: OutlineInputBorder())),
                const SizedBox(height: 16),
                const TextField(decoration: InputDecoration(labelText: 'Phone Number', border: OutlineInputBorder())),
                const SizedBox(height: 24),
                ElevatedButton(onPressed: () {}, child: const Text('Submit Form')),
              ],
            ),
          );
        },
      ),
    );
  }
}

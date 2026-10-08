import 'package:flutter/material.dart';

class SecC1Screen extends StatelessWidget {
  const SecC1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section C - Q1: Responsive Dashboard')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double width = constraints.maxWidth;
          if (width > 900) {
            // Desktop: 3-panel Row
            return Row(
              children: [
                NavigationRail(
                  selectedIndex: 0,
                  destinations: const [
                    NavigationRailDestination(icon: Icon(Icons.dashboard), label: Text('Dashboard')),
                    NavigationRailDestination(icon: Icon(Icons.analytics), label: Text('Analytics')),
                  ],
                ),
                Expanded(
                  flex: 2,
                  child: Container(color: Colors.grey.shade100, child: const Center(child: Text('Main Content Area', style: TextStyle(fontSize: 20)))),
                ),
                Expanded(
                  flex: 1,
                  child: Container(color: Colors.grey.shade200, child: const Center(child: Text('Details Panel', style: TextStyle(fontSize: 18)))),
                ),
              ],
            );
          } else if (width > 600) {
            // Tablet: 2-column grid
            return GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(16),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: List.generate(4, (index) => Card(child: Center(child: Text('Tablet Grid Item ${index + 1}', style: const TextStyle(fontSize: 18))))),
            );
          } else {
            // Mobile: Single column list
            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: 5,
              itemBuilder: (context, index) => Card(
                child: ListTile(title: Text('Mobile List Item ${index + 1}')),
              ),
            );
          }
        },
      ),
    );
  }
}

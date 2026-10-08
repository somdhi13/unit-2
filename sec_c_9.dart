import 'package:flutter/material.dart';

class SecC9Screen extends StatelessWidget {
  const SecC9Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section C - Q9: Reflowing Settings')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isWide = constraints.maxWidth > 700;
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Account Settings', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.indigo)),
                const SizedBox(height: 8),
                Table(
                  columnWidths: const {0: FlexColumnWidth(1), 1: FlexColumnWidth(2)},
                  border: TableBorder.all(color: Colors.grey.shade300),
                  children: const [
                    TableRow(children: [Padding(padding: EdgeInsets.all(10), child: Text('Username')), Padding(padding: EdgeInsets.all(10), child: Text('johndoe'))]),
                    TableRow(children: [Padding(padding: EdgeInsets.all(10), child: Text('Email')), Padding(padding: EdgeInsets.all(10), child: Text('john@example.com'))]),
                  ],
                ),
                const SizedBox(height: 20),
                const Text('App Preferences', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.indigo)),
                const SizedBox(height: 8),
                Table(
                  columnWidths: const {0: FlexColumnWidth(1), 1: FlexColumnWidth(2)},
                  border: TableBorder.all(color: Colors.grey.shade300),
                  children: const [
                    TableRow(children: [Padding(padding: EdgeInsets.all(10), child: Text('Theme')), Padding(padding: EdgeInsets.all(10), child: Text('Dark'))]),
                    TableRow(children: [Padding(padding: EdgeInsets.all(10), child: Text('Audio')) , Padding(padding: EdgeInsets.all(10), child: Text('High Quality'))]),
                  ],
                ),
                if (isWide) ...[
                  const SizedBox(height: 20),
                  const Text('Layout mode: Reflowed 2-column view (width > 700dp)', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SecB8Screen extends StatelessWidget {
  const SecB8Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section B - Q8: Settings Table')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Table(
          columnWidths: const {
            0: FlexColumnWidth(1),
            1: FlexColumnWidth(2),
          },
          border: TableBorder.all(color: Colors.grey.shade300, width: 1),
          children: const [
            TableRow(
              decoration: BoxDecoration(color: Colors.grey),
              children: [
                Padding(padding: EdgeInsets.all(12.0), child: Text('Setting', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))),
                Padding(padding: EdgeInsets.all(12.0), child: Text('Value', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))),
              ],
            ),
            TableRow(children: [
              Padding(padding: EdgeInsets.all(12.0), child: Text('App Version')),
              Padding(padding: EdgeInsets.all(12.0), child: Text('v1.0.4')),
            ]),
            TableRow(children: [
              Padding(padding: EdgeInsets.all(12.0), child: Text('Notifications')),
              Padding(padding: EdgeInsets.all(12.0), child: Text('Enabled')),
            ]),
            TableRow(children: [
              Padding(padding: EdgeInsets.all(12.0), child: Text('Dark Mode')),
              Padding(padding: EdgeInsets.all(12.0), child: Text('System Default')),
            ]),
            TableRow(children: [
              Padding(padding: EdgeInsets.all(12.0), child: Text('Language')),
              Padding(padding: EdgeInsets.all(12.0), child: Text('English')),
            ]),
          ],
        ),
      ),
    );
  }
}

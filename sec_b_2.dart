import 'package:flutter/material.dart';

class SecB2Screen extends StatelessWidget {
  const SecB2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section B - Q2: Responsive LayoutBuilder')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isWide = constraints.maxWidth > 600;
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: isWide
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Card(child: Padding(padding: EdgeInsets.all(32.0), child: Text('Tablet/Desktop Pane 1', style: TextStyle(fontSize: 18)))),
                        SizedBox(width: 20),
                        Card(child: Padding(padding: EdgeInsets.all(32.0), child: Text('Tablet/Desktop Pane 2', style: TextStyle(fontSize: 18)))),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Card(child: Padding(padding: EdgeInsets.all(32.0), child: Text('Mobile Pane 1', style: TextStyle(fontSize: 18)))),
                        SizedBox(height: 20),
                        Card(child: Padding(padding: EdgeInsets.all(32.0), child: Text('Mobile Pane 2', style: TextStyle(fontSize: 18)))),
                      ],
                    ),
            ),
          );
        },
      ),
    );
  }
}

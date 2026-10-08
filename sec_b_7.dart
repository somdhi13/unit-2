import 'package:flutter/material.dart';

class SecB7Screen extends StatelessWidget {
  const SecB7Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Section B - Q7: TabBar Demo'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.photo), text: 'Photos'),
              Tab(icon: Icon(Icons.videocam), text: 'Videos'),
              Tab(icon: Icon(Icons.folder), text: 'Files'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Photos Placeholder Content', style: TextStyle(fontSize: 20))),
            Center(child: Text('Videos Placeholder Content', style: TextStyle(fontSize: 20))),
            Center(child: Text('Files Placeholder Content', style: TextStyle(fontSize: 20))),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SecC6Screen extends StatelessWidget {
  const SecC6Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Section C - Q6: Multi-Tab Profile'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.grid_on), text: 'Photo Grid'),
              Tab(icon: Icon(Icons.list), text: 'Activity Feed'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            GridView.count(
              crossAxisCount: 3,
              padding: const EdgeInsets.all(4),
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              children: List.generate(12, (index) => Image.network('https://picsum.photos/200/200?${index + 10}', fit: BoxFit.cover)),
            ),
            ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) => ListTile(
                leading: const CircleAvatar(child: Icon(Icons.person)),
                title: Text('Activity Item #${index + 1}'),
                subtitle: const Text('Completed a new task successfully.'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

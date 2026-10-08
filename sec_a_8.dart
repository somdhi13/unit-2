import 'package:flutter/material.dart';

class SecA8Screen extends StatefulWidget {
  const SecA8Screen({super.key});

  @override
  State<SecA8Screen> createState() => _SecA8ScreenState();
}

class _SecA8ScreenState extends State<SecA8Screen> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    Center(child: Text('Home Tab Content', style: TextStyle(fontSize: 22))),
    Center(child: Text('Search Tab Content', style: TextStyle(fontSize: 22))),
    Center(child: Text('Profile Tab Content', style: TextStyle(fontSize: 22))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section A - Q8: Bottom Navigation')),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

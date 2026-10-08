import 'package:flutter/material.dart';

class SecC5Screen extends StatefulWidget {
  const SecC5Screen({super.key});

  @override
  State<SecC5Screen> createState() => _SecC5ScreenState();
}

class _SecC5ScreenState extends State<SecC5Screen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isDesktop = constraints.maxWidth > 700;
        return Scaffold(
          appBar: AppBar(title: const Text('Section C - Q5: Responsive Nav Shell')),
          drawer: isDesktop
              ? null
              : Drawer(
                  child: ListView(
                    children: [
                      const DrawerHeader(child: Text('Mobile Navigation', style: TextStyle(fontSize: 20))),
                      ListTile(title: const Text('Home'), onTap: () => Navigator.pop(context)),
                      ListTile(title: const Text('Explore'), onTap: () => Navigator.pop(context)),
                    ],
                  ),
                ),
          body: Row(
            children: [
              if (isDesktop)
                NavigationRail(
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: (index) => setState(() => _selectedIndex = index),
                  labelType: NavigationRailLabelType.all,
                  destinations: const [
                    NavigationRailDestination(icon: Icon(Icons.home), label: Text('Home')),
                    NavigationRailDestination(icon: Icon(Icons.explore), label: Text('Explore')),
                  ],
                ),
              Expanded(
                child: Center(
                  child: Text('Selected Index: $_selectedIndex (${isDesktop ? 'Desktop NavigationRail' : 'Mobile Drawer'})', style: const TextStyle(fontSize: 18)),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

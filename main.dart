import 'package:flutter/material.dart';

// Section A Imports
import 'sec_a_1.dart';
import 'sec_a_2.dart';
import 'sec_a_3.dart';
import 'sec_a_4.dart';
import 'sec_a_5.dart';
import 'sec_a_6.dart';
import 'sec_a_7.dart';
import 'sec_a_8.dart';
import 'sec_a_9.dart';
import 'sec_a_10.dart';

// Section B Imports
import 'sec_b_1.dart';
import 'sec_b_2.dart';
import 'sec_b_3.dart';
import 'sec_b_4.dart';
import 'sec_b_5.dart';
import 'sec_b_6.dart';
import 'sec_b_7.dart';
import 'sec_b_8.dart';
import 'sec_b_9.dart';
import 'sec_b_10.dart';

// Section C Imports
import 'sec_c_1.dart';
import 'sec_c_2.dart';
import 'sec_c_3.dart';
import 'sec_c_4.dart';
import 'sec_c_5.dart';
import 'sec_c_6.dart';
import 'sec_c_7.dart';
import 'sec_c_8.dart';
import 'sec_c_9.dart';
import 'sec_c_10.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Practicals Hub',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PracticalMasterScreen(),
    );
  }
}

class PracticalMasterScreen extends StatelessWidget {
  const PracticalMasterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Practical Programs (30 Questions)'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Select a practical below to run:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          _buildSectionGroup(context, 'Section A — Easy Level', [
            _PracticalItem('1. Personal Info (StatelessWidget)', const SecA1Screen()),
            _PracticalItem('2. Counter App (StatefulWidget)', const SecA2Screen()),
            _PracticalItem('3. Scaffold & Floating Action Button', const SecA3Screen()),
            _PracticalItem('4. ListView with Fruit Names', const SecA4Screen()),
            _PracticalItem('5. GridView Coloured Boxes', const SecA5Screen()),
            _PracticalItem('6. Card Widget with Image & Description', const SecA6Screen()),
            _PracticalItem('7. Drawer with ListTile Menu Items', const SecA7Screen()),
            _PracticalItem('8. BottomNavigationBar (3 Tabs)', const SecA8Screen()),
            _PracticalItem('9. Stack Label on Container', const SecA9Screen()),
            _PracticalItem('10. Custom SectionTitle Widget', const SecA10Screen()),
          ]),
          const SizedBox(height: 16),
          _buildSectionGroup(context, 'Section B — Moderate Level', [
            _PracticalItem('1. StatefulWidget Lifecycle Demo', const SecB1Screen()),
            _PracticalItem('2. Responsive LayoutBuilder (Column/Row)', const SecB2Screen()),
            _PracticalItem('3. Product Listing GridView', const SecB3Screen()),
            _PracticalItem('4. Custom ProfileCard Widget', const SecB4Screen()),
            _PracticalItem('5. Tag/Skill Selector (Wrap & Chips)', const SecB5Screen()),
            _PracticalItem('6. Notification Badge (Stack & Positioned)', const SecB6Screen()),
            _PracticalItem('7. TabBar with 3 Tabs & Views', const SecB7Screen()),
            _PracticalItem('8. Settings Screen using Table', const SecB8Screen()),
            _PracticalItem('9. Adaptive Form Layout', const SecB9Screen()),
            _PracticalItem('10. AspectRatio Media Card', const SecB10Screen()),
          ]),
          const SizedBox(height: 16),
          _buildSectionGroup(context, 'Section C — Hard Level', [
            _PracticalItem('1. Responsive Dashboard (LayoutBuilder)', const SecC1Screen()),
            _PracticalItem('2. Custom Widget Library Demo', const SecC2Screen()),
            _PracticalItem('3. E-commerce Product Detail Screen', const SecC3Screen()),
            _PracticalItem('4. To-Do List App (CRUD & setState)', const SecC4Screen()),
            _PracticalItem('5. Responsive Navigation Shell (Drawer/Rail)', const SecC5Screen()),
            _PracticalItem('6. Multi-Tab Profile (Grid & List)', const SecC6Screen()),
            _PracticalItem('7. News Feed with IntrinsicHeight', const SecC7Screen()),
            _PracticalItem('8. Profile Header with Overlapping Avatar', const SecC8Screen()),
            _PracticalItem('9. Reflowing Settings Screen (> 700dp)', const SecC9Screen()),
            _PracticalItem('10. Widget Lifecycle Logger Utility', const SecC10SchoolAdapterOrScreen()),
          ]),
        ],
      ),
    );
  }

  Widget _buildSectionGroup(BuildContext context, String title, List<_PracticalItem> items) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ExpansionTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        children: items.map((item) {
          return ListTile(
            title: Text(item.title),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => item.screen),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

class _PracticalItem {
  final String title;
  final Widget screen;
  _PracticalItem(this.title, this.screen);
}
// Note: SecC10Screen class alias for C10
class SecC10SchoolAdapterOrScreen extends SecC10Screen {
  const SecC10SchoolAdapterOrScreen({super.key});
}

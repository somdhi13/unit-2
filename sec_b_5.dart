import 'package:flutter/material.dart';

class SecB5Screen extends StatefulWidget {
  const SecB5Screen({super.key});

  @override
  State<SecB5Screen> createState() => _SecB5ScreenState();
}

class _SecB5ScreenState extends State<SecB5Screen> {
  final List<String> _skills = ['Flutter', 'Dart', 'React', 'Node.js', 'Python', 'Firebase', 'UI/UX', 'GraphQL'];
  final Set<String> _selectedSkills = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section B - Q5: Tag Selector')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Select your skills:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: _skills.map((skill) {
                bool isSelected = _selectedSkills.contains(skill);
                return FilterChip(
                  label: Text(skill),
                  selected: isSelected,
                  onSelected: (selected) {
                    setState(() {
                      if (selected) {
                        _selectedSkills.add(skill);
                      } else {
                        _selectedSkills.remove(skill);
                      }
                    });
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 30),
            Text('Selected Skills: ${_selectedSkills.join(', ')}', style: const TextStyle(fontSize: 16, color: Colors.indigo)),
          ],
        ),
      ),
    );
  }
}

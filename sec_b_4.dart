import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String role;
  final String imageUrl;
  final VoidCallback onTap;

  const ProfileCard({
    super.key,
    required this.name,
    required this.role,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: CircleAvatar(radius: 30, backgroundImage: NetworkImage(imageUrl)),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        subtitle: Text(role),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }
}

class SecB4Screen extends StatelessWidget {
  const SecB4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section B - Q4: Custom ProfileCard')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ProfileCard(
            name: 'Alice Smith',
            role: 'Flutter Developer',
            imageUrl: 'https://picsum.photos/200/200?1',
            onTap: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Tapped Alice'))),
          ),
          ProfileCard(
            name: 'Bob Johnson',
            role: 'UI/UX Designer',
            imageUrl: 'https://picsum.photos/200/200?2',
            onTap: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Tapped Bob'))),
          ),
          ProfileCard(
            name: 'Charlie Brown',
            role: 'Project Manager',
            imageUrl: 'https://picsum.photos/200/200?3',
            onTap: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Tapped Charlie'))),
          ),
        ],
      ),
    );
  }
}

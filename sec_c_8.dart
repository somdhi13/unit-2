import 'package:flutter/material.dart';

class SecC8Screen extends StatelessWidget {
  const SecC8Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section C - Q8: Profile Header')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Image.network('https://picsum.photos/800/300', height: 200, width: double.infinity, fit: BoxFit.cover),
                Positioned(
                  bottom: -50,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 4),
                    ),
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage('https://picsum.photos/200/200?avatar'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
            const Text('Alex Morgan', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            const Text('@alexmorgan • Software Engineer', style: TextStyle(color: Colors.grey, fontSize: 16)),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: const Text(
                'Passionate developer building amazing mobile and web applications with Flutter and Dart.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

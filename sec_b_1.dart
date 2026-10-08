import 'package:flutter/material.dart';

class SecB1Screen extends StatefulWidget {
  const SecB1Screen({super.key});

  @override
  State<SecB1Screen> createState() => _SecB1ScreenState();
}

class _SecB1ScreenState extends State<SecB1Screen> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    debugPrint('Lifecycle: initState called');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('Lifecycle: didChangeDependencies called');
  }

  @override
  void didUpdateWidget(covariant SecB1Screen oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint('Lifecycle: didUpdateWidget called');
  }

  @override
  void deactivate() {
    debugPrint('Lifecycle: deactivate called');
    super.deactivate();
  }

  @override
  void dispose() {
    debugPrint('Lifecycle: dispose called');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Lifecycle: build called');
    return Scaffold(
      appBar: AppBar(title: const Text('Section B - Q1: Lifecycle Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Check console output for lifecycle logs!', textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            Text('Count: $_counter', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => setState(() => _counter++),
              child: const Text('Rebuild (setState)'),
            ),
          ],
        ),
      ),
    );
  }
}

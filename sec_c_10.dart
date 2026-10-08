import 'package:flutter/material.dart';

class LifecycleWrapper extends StatefulWidget {
  final Widget child;
  const LifecycleWrapper({super.key, required this.child});

  @override
  State<LifecycleWrapper> createState() => _LifecycleWrapperState();
}

class _LifecycleWrapperState extends State<LifecycleWrapper> {
  void _log(String event) {
    debugPrint('[${DateTime.now().toIso8601String()}] Lifecycle Logger: $event');
  }

  @override
  void initState() {
    super.initState();
    _log('initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _log('didChangeDependencies');
  }

  @override
  void didUpdateWidget(covariant LifecycleWrapper oldWidget) {
    super.didUpdateWidget(oldWidget);
    _log('didUpdateWidget');
  }

  @override
  void deactivate() {
    _log('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    _log('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _log('build');
    return widget.child;
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Wrapped Counter: $count', style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () => setState(() => count++),
          child: const Text('Increment Count'),
        ),
      ],
    );
  }
}

class SecC10Screen extends StatelessWidget {
  const SecC10Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section C - Q10: Lifecycle Logger')),
      body: const Center(
        child: LifecycleWrapper(
          child: CounterWidget(),
        ),
      ),
    );
  }
}

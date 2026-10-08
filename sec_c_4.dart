import 'package:flutter/material.dart';

class TodoItem {
  String title;
  bool isComplete;
  TodoItem({required this.title, this.isComplete = false});
}

class SecC4Screen extends StatefulWidget {
  const SecC4Screen({super.key});

  @override
  State<SecC4Screen> createState() => _SecC4ScreenState();
}

class _SecC4ScreenState extends State<SecC4Screen> {
  final List<TodoItem> _todos = [
    TodoItem(title: 'Learn Flutter Navigation 3'),
    TodoItem(title: 'Build Responsive Layouts'),
    TodoItem(title: 'Publish App to Play Store'),
  ];
  final TextEditingController _controller = TextEditingController();

  void _addTodo() {
    if (_controller.text.trim().isNotEmpty) {
      setState(() {
        _todos.add(TodoItem(title: _controller.text.trim()));
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section C - Q4: To-Do List')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(labelText: 'New Task', border: OutlineInputBorder()),
                  ),
                ),
                const SizedBox(width: 12),
                ElevatedButton(onPressed: _addTodo, child: const Text('Add')),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _todos.length,
              itemBuilder: (context, index) {
                final todo = _todos[index];
                return CheckboxListTile(
                  title: Text(todo.title, style: TextStyle(decoration: todo.isComplete ? TextDecoration.lineThrough : null)),
                  value: todo.isComplete,
                  onChanged: (val) {
                    setState(() {
                      todo.isComplete = val ?? false;
                    });
                  },
                  secondary: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      setState(() {
                        _todos.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

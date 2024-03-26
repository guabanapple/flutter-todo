import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/list_item.dart';
import 'package:todo/todo_add_page.dart';
import 'package:todo/todo_provider.dart';

class TodoListPage extends ConsumerWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todoProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoList Page'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) => ListItem(title: todos[index])),
      floatingActionButton: FloatingActionButton(
        tooltip: 'aaa',
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => TodoAddPage()),
          );
        },
      ),
    );
  }
}
